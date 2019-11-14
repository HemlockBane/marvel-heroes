import 'package:json_annotation/json_annotation.dart';

import 'character_data_container.dart';

part 'character_data_wrapper.g.dart';



@JsonSerializable()

class CharacterDataWrapper{
  CharacterDataWrapper(this.code, this.status, this.etag, this.data, this.copyright, this.attributionText, this.attributionHtml);


  int code;
  String status;
  String etag;
  CharacterDataContainer data;
  String copyright;
  String attributionText;
  @JsonKey(name: 'attributionHTML')
  String attributionHtml;



  factory CharacterDataWrapper.fromJson(Map<String, dynamic> json) => _$CharacterDataWrapperFromJson(json);


  Map<String, dynamic> toJson() => _$CharacterDataWrapperToJson(this);


}