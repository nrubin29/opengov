// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Comment _$CommentFromJson(Map<String, dynamic> json) => Comment(
      id: json['id'] as int,
      pollId: json['poll_id'] as int,
      userId: json['user_id'] as int?,
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$CommentToJson(Comment instance) => <String, dynamic>{
      'id': instance.id,
      'poll_id': instance.pollId,
      'user_id': instance.userId,
      'comment': instance.comment,
    };
