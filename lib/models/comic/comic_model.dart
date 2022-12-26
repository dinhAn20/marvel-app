import 'package:json_annotation/json_annotation.dart';
import 'package:marvel_app/models/character/character_model.dart';
part 'comic_model.g.dart';

@JsonSerializable()
class Comic {
  final int id;
  final String title;
  final String? variantDescription, description, resourceURI;
  final Thumbnail? thumbnail;

  Comic(
      {required this.id,
      required this.title,
      this.variantDescription,
      this.description,
      this.resourceURI,
      this.thumbnail});
  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);

  Map<String, dynamic> toJson() => _$ComicToJson(this);
}
