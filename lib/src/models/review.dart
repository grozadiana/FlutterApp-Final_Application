import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'review.freezed.dart';

part 'review.g.dart';

@freezed
class Review with _$Review {
  const factory Review({
    required String id,
    required String text,
    required String uid,
    required DateTime createdAt,
    required String photoId,
  }) = Review$;

  const Review._();

  factory Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

  String get createdAtFormatted => DateFormat('yyyy-MM-dd – kk:mm').format(createdAt);
}
