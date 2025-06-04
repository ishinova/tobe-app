// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NetworkNews _$NetworkNewsFromJson(Map<String, dynamic> json) => _NetworkNews(
  title: json['title'] as String,
  slug: json['slug'] as String,
  publishedAt: DateTime.parse(json['publishedAt'] as String),
  excerpt: json['excerpt'] as String,
  coverImageUrl: json['coverImageUrl'] as String?,
);

Map<String, dynamic> _$NetworkNewsToJson(_NetworkNews instance) =>
    <String, dynamic>{
      'title': instance.title,
      'slug': instance.slug,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'excerpt': instance.excerpt,
      'coverImageUrl': instance.coverImageUrl,
    };
