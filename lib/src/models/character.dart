import 'package:json_annotation/json_annotation.dart';

import 'character_image.dart';

part 'character.g.dart';

@JsonSerializable()
class Character{
  Character();

  int id;
  String name;
  String description;
  @JsonKey(name: 'thumbnail')
  CharacterImage image;

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);


  Map<String, dynamic> toJson() => _$CharacterToJson(this);

}