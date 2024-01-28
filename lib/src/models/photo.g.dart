// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: json['id'] as String?,
      author: json['author'] as String? ?? 'Unknown Author',
      authorName: json['authorName'] as String? ?? 'Unknown Author',
      imageUrl: json['imageUrl'] as String? ?? '',
      authorProfileUrl: json['authorProfileUrl'] as String? ?? '',
      mediumImage: json['medium_cover_image'] as String? ?? '',
      largeImage: json['large_cover_image'] as String? ?? '',
      createdAt: json['createdAt'] == null ? null : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt'] as String),
      width: json['width'] as int?,
      height: json['height'] as int?,
      color: json['color'] as String? ?? '',
      blurHash: json['blurHash'] as String? ?? '',
      description: json['description'] as String?,
      altDescription: json['altDescription'] as String?,
      urls: (json['urls'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) => <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'authorName': instance.authorName,
      'imageUrl': instance.imageUrl,
      'authorProfileUrl': instance.authorProfileUrl,
      'medium_cover_image': instance.mediumImage,
      'large_cover_image': instance.largeImage,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'width': instance.width,
      'height': instance.height,
      'color': instance.color,
      'blurHash': instance.blurHash,
      'description': instance.description,
      'altDescription': instance.altDescription,
      'urls': instance.urls,
    };
