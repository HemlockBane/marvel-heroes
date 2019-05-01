// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_data_container.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CharacterDataContainer _$CharacterDataContainerFromJson(
    Map<String, dynamic> json) {
  return CharacterDataContainer(
      json['offset'] as int,
      json['limit'] as int,
      json['total'] as int,
      json['count'] as int,
      (json['results'] as List)
          ?.map((e) =>
              e == null ? null : Character.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$CharacterDataContainerToJson(
        CharacterDataContainer instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'limit': instance.limit,
      'total': instance.total,
      'count': instance.count,
      'results': instance.characters
    };
