// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poll.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Poll _$PollFromJson(Map<String, dynamic> json) => Poll(
      id: json['id'] as int,
      topic: json['topic'] as String,
      description: json['description'] as String?,
      end: dateTimeFromJson(json['end'] as int),
      isPermanent: boolFromJson(json['is_permanent'] as int),
    );

Map<String, dynamic> _$PollToJson(Poll instance) => <String, dynamic>{
      'id': instance.id,
      'topic': instance.topic,
      'description': instance.description,
      'end': dateTimeToJson(instance.end),
      'is_permanent': boolToJson(instance.isPermanent),
    };
