import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_state.dart';
import '../../models/review.dart';

class ReviewsContainer extends StatelessWidget {
  const ReviewsContainer({super.key, required this.builder, this.sortReviews});

  final ViewModelBuilder<List<Review>> builder;
  final void Function(List<Review>)? sortReviews;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Review>>(
      converter: (Store<AppState> store) {
        return store.state.reviews;
      },
      builder: (BuildContext context, List<Review> reviews) {
        if (sortReviews != null) {
          reviews = <Review>[...reviews];
          sortReviews!(reviews);
        }

        return builder(context, reviews);
      },
    );
  }
}
