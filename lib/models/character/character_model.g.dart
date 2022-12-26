// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) => Character(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      modified: json['modified'] as String?,
      resourceURI: json['resourceURI'] as String?,
      thumbnail: json['thumbnail'] == null
          ? null
          : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'modified': instance.modified,
      'resourceURI': instance.resourceURI,
      'thumbnail': instance.thumbnail,
    };

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) => Thumbnail(
      path: json['path'] as String,
      extension: json['extension'] as String,
    );

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'path': instance.path,
      'extension': instance.extension,
    };
