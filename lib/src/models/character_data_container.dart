import 'package:json_annotation/json_annotation.dart';

import 'character.dart';

part 'character_data_container.g.dart';

@JsonSerializable()
class CharacterDataContainer{
  CharacterDataContainer(this.offset, this.limit, this.total, this.count, this.characters);
  int offset;
  int limit;
  int total;
  int count;
  @JsonKey(name: 'results')
  List<Character> characters;


  factory CharacterDataContainer.fromJson(Map<String, dynamic> json) => _$CharacterDataContainerFromJson(json);


  Map<String, dynamic> toJson() => _$CharacterDataContainerToJson(this);

}