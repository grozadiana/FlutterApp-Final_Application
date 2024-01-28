import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../action/get_photos.dart';
import '../models/app_user.dart';
import '../models/photo.dart';
import 'containers/app_user_container.dart';
import 'containers/full_screen_image_container.dart';
import 'containers/is_loading_container.dart';
import 'containers/photo_container.dart';
import 'extensions.dart';
import 'user_picture.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController();
  final TextEditingController textController = TextEditingController();
  Timer? _debounce;

  @override
  void initState() {
    super.initState();
    controller.addListener(_onScroll);
    context.dispatch(const GetPhotos());
  }

  void _onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) {
      _debounce!.cancel();
    }
    _debounce = Timer(const Duration(milliseconds: 500), () {
      context.dispatch(GetPhotos(query: query));
    });
  }

  void _onScroll() {
    final double offset = controller.offset;
    final double maxExtent = controller.position.maxScrollExtent;

    if (!context.state.isLoading && offset > maxExtent * .8) {
      context.dispatch(GetPhotos(query: textController.text));
    }
  }

  @override
  void dispose() {
    _debounce?.cancel();
    textController.dispose();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PhotosContainer(
      builder: (BuildContext context, List<Photo> photos) {
        return AppUserContainer(
          builder: (BuildContext context, AppUser? user) {
            return IsLoadingContainer(
              builder: (BuildContext context, bool isLoading) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Photos'),
                    actions: <Widget>[
                      if (user != null)
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/profile');
                          },
                          child: const UserPicture(),
                        )
                    ],
                  ),
                  body: Column(
                    children: <Widget>[
                      Expanded(
                        child: CustomScrollView(
                          controller: controller,
                          slivers: <Widget>[
                            SliverToBoxAdapter(
                              child: TextField(
                                controller: textController,
                                onChanged: _onSearchChanged,
                                decoration: const InputDecoration(hintText: 'Search an author'),
                              ),
                            ),
                            if (!isLoading && photos.isEmpty)
                              const SliverToBoxAdapter(
                                child: Center(
                                  child: Text('No items found.'),
                                ),
                              ),
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (BuildContext context, int index) {
                                  final Photo photo = photos[index];
                                  return GestureDetector(
                                    onTap: () {
                                      if (user != null) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute<Widget>(
                                            builder: (BuildContext context) => FullScreenImagePage(
                                              imageUrl: photo.imageUrl,
                                            ),
                                          ),
                                        );
                                      } else {
                                        Navigator.pushNamed(
                                          context,
                                          '/loginUser',
                                        );
                                      }
                                    },
                                    child: Card(
                                      margin: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: <Widget>[
                                          AspectRatio(
                                            aspectRatio: 16 / 9,
                                            child: Image.network(
                                              photo.imageUrl,
                                              fit: BoxFit.cover,
                                              width: double.infinity,
                                              errorBuilder:
                                                  (BuildContext context, Object error, StackTrace? stackTrace) {
                                                return const Center(child: Text('The image could not be loaded'));
                                              },
                                            ),
                                          ),
                                          ListTile(
                                            title: Text(photo.authorName),
                                            trailing: TextButton(
                                              onPressed: () {
                                                if (photo.authorProfileUrl.isNotEmpty) {
                                                  launchUrl(Uri.parse(photo.authorProfileUrl));
                                                }
                                              },
                                              child: const Text('Author Profile'),
                                            ),
                                          ),
                                          Visibility(
                                            visible: user != null,
                                            child: TextButton(
                                              onPressed: () {
                                                Navigator.pushNamed(
                                                  context,
                                                  '/photo',
                                                  arguments: photo,
                                                );
                                              },
                                              child: const Text('Details'),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                childCount: photos.length,
                              ),
                            ),
                            if (isLoading)
                              const SliverFillRemaining(
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
