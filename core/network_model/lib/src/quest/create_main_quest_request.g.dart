// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_main_quest_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateMainQuestRequestImpl _$$CreateMainQuestRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CreateMainQuestRequestImpl(
  userId: json['userId'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  note: json['note'] as String,
);

Map<String, dynamic> _$$CreateMainQuestRequestImplToJson(
  _$CreateMainQuestRequestImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'title': instance.title,
  'description': instance.description,
  'note': instance.note,
};
