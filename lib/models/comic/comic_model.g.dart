// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comic _$ComicFromJson(Map<String, dynamic> json) => Comic(
      id: json['id'] as int,
      title: json['title'] as String,
      variantDescription: json['variantDescription'] as String?,
      description: json['description'] as String?,
      resourceURI: json['resourceURI'] as String?,
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ComicToJson(Comic instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'variantDescription': instance.variantDescription,
      'description': instance.description,
      'resourceURI': instance.resourceURI,
      'thumbnail': instance.thumbnail,
    };
