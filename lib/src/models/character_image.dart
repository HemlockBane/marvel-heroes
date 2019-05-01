import 'package:json_annotation/json_annotation.dart';

part 'character_image.g.dart';

@JsonSerializable()

class CharacterImage{
  CharacterImage(this.path, this.extension);

  String path;
  String extension;
  factory CharacterImage.fromJson(Map<String, dynamic> json) => _$CharacterImageFromJson(json);


  Map<String, dynamic> toJson() => _$CharacterImageToJson(this);
}

