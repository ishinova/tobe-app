// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_main_quest_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateMainQuestRequest _$CreateMainQuestRequestFromJson(
  Map<String, dynamic> json,
) => _CreateMainQuestRequest(
  userId: json['userId'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  note: json['note'] as String,
);

Map<String, dynamic> _$CreateMainQuestRequestToJson(
  _CreateMainQuestRequest instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'title': instance.title,
  'description': instance.description,
  'note': instance.note,
};
