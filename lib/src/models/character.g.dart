// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return Character()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..image = json['thumbnail'] == null
        ? null
        : CharacterImage.fromJson(json['thumbnail'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CharacterToJson(Character instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'thumbnail': instance.image
    };
