// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Photo$Impl _$$Photo$ImplFromJson(Map<String, dynamic> json) => _$Photo$Impl(
      id: json['id'] as String,
      author: json['author'] as String,
      imageUrl: json['imageUrl'] as String,
      authorProfileUrl: json['authorProfileUrl'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$Photo$ImplToJson(_$Photo$Impl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'imageUrl': instance.imageUrl,
      'authorProfileUrl': instance.authorProfileUrl,
      'color': instance.color,
    };
