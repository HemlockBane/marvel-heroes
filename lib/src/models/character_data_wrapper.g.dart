// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_data_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterDataWrapper _$CharacterDataWrapperFromJson(Map<String, dynamic> json) {
  return CharacterDataWrapper(
      json['code'] as int,
      json['status'] as String,
      json['etag'] as String,
      json['data'] == null
          ? null
          : CharacterDataContainer.fromJson(
              json['data'] as Map<String, dynamic>),
      json['copyright'] as String,
      json['attributionText'] as String,
      json['attributionHTML'] as String);
}

Map<String, dynamic> _$CharacterDataWrapperToJson(
        CharacterDataWrapper instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'etag': instance.etag,
      'data': instance.data,
      'copyright': instance.copyright,
      'attributionText': instance.attributionText,
      'attributionHTML': instance.attributionHtml
    };
