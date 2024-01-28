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
      createdAt: json['createdAt'] == null ? null : DateTime.parse(json['createdAt'] as String),
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
      'createdAt': instance.createdAt?.toIso8601String(),
      'description': instance.description,
      'altDescription': instance.altDescription,
      'urls': instance.urls,
    };
