import 'package:json_annotation/json_annotation.dart';
part 'character_model.g.dart';

@JsonSerializable()
class Character {
  final int id;
  final String name;
  final String? description, modified, resourceURI;
  Thumbnail? thumbnail;

  Character(
      {required this.id,
      required this.name,
      this.description,
      this.modified,
      this.resourceURI});
  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  Map<String, dynamic> toJson() => _$CharacterToJson(this);
}

@JsonSerializable()
class Thumbnail {
  final String path;
  final String extension;

  Thumbnail({required this.path, required this.extension});
  factory Thumbnail.fromJson(Map<String, dynamic> json) =>
      _$ThumbnailFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);
}
