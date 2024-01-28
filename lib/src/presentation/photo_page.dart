import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';
import '../action/create_review.dart';
import '../models/app_state.dart';
import '../models/app_user.dart';
import '../models/photo.dart';
import '../models/review.dart';
import 'containers/reviews_container.dart';
import 'containers/users_container.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    final Object? arguments = ModalRoute.of(context)?.settings.arguments;
    if (arguments == null || arguments is! Photo) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Photo not found')),
      );
    }

    final Photo photo = arguments;
    final String imageUrl = photo.imageUrl.isNotEmpty ? photo.imageUrl : 'https://via.placeholder.com/400';

    return Scaffold(
      appBar: AppBar(
        title: Text(photo.authorName),
      ),
      body: ReviewsContainer(
        builder: (BuildContext context, List<Review> reviews) {
          return UsersContainer(
            builder: (BuildContext context, Map<String, AppUser> users) {
              return CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: SizedBox(
                            height: 300,
                            child: AspectRatio(
                              aspectRatio: 0.69,
                              child: Image.network(
                                imageUrl,
                                fit: BoxFit.cover,
                                width: double.infinity,
                                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                                  return const Center(child: Text('Could not load image.'));
                                },
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          photo.authorProfileUrl.isNotEmpty ? photo.authorProfileUrl : 'No profile URL provided',
                          style: const TextStyle(
                            color: Colors.amber,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Container(
                          padding: const EdgeInsets.all(16.0),
                          alignment: Alignment.center,
                          child: Text(
                            photo.description?.isNotEmpty ?? false ? photo.description! : 'No description available',
                            style: const TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SliverPadding(
                    padding: EdgeInsets.all(16.0),
                    sliver: SliverToBoxAdapter(
                      child: Text(
                        'Reviews',
                        style: TextStyle(fontSize: 24.0),
                      ),
                    ),
                  ),
                  if (reviews.isNotEmpty)
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          final Review review = reviews[index];
                          final AppUser? user = users[review.uid];
                          return ListTile(
                            title: Text(review.text),
                            subtitle: Text(
                                '${user?.displayName ?? 'Anonymous User'} - ${DateFormat('dd/MM/yyyy').format(review.createdAt)}'),
                          );
                        },
                        childCount: reviews.length,
                      ),
                    )
                  else
                    const SliverFillRemaining(
                      child: Center(
                        child: Text('No reviews yet. Be the first to add one!'),
                      ),
                    ),
                ],
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final TextEditingController controller = TextEditingController();
          showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Add your review'),
                content: TextField(
                  controller: controller,
                  decoration: const InputDecoration(hintText: 'Enter your review here'),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      final String text = controller.text.trim();
                      if (text.isNotEmpty && photo.id != null) {
                        final String photoId = photo.id!;
                        store.dispatch(CreateReview(text, photoId));
                        Navigator.pop(context);
                      } else {
                        const Text('Review error');
                      }
                    },
                    child: const Text('Save'),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.add_comment),
      ),
    );
  }
}
