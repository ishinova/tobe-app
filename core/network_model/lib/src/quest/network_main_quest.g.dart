// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_main_quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkMainQuest _$NetworkMainQuestFromJson(Map<String, dynamic> json) =>
    _NetworkMainQuest(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      begunAt: json['begunAt'] == null
          ? null
          : DateTime.parse(json['begunAt'] as String),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      categoryId: json['categoryId'] as String?,
      status: json['status'] as String,
      coverImageUrl: json['coverImageUrl'] as String?,
      note: json['note'] as String,
    );

Map<String, dynamic> _$NetworkMainQuestToJson(_NetworkMainQuest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'begunAt': instance.begunAt?.toIso8601String(),
      'endedAt': instance.endedAt?.toIso8601String(),
      'categoryId': instance.categoryId,
      'status': instance.status,
      'coverImageUrl': instance.coverImageUrl,
      'note': instance.note,
    };
