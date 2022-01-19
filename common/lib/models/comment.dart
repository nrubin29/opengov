import 'package:json_annotation/json_annotation.dart';
import 'package:opengov_common/common.dart';

part 'comment.g.dart';

@JsonSerializable()
class Comment {
  final int id;

  @JsonKey(name: 'poll_id')
  final int pollId;

  @JsonKey(name: 'user_id')
  final int? userId;
  final String comment;

  @JsonKey(fromJson: dateTimeFromJson, toJson: dateTimeToJson)
  final DateTime timestamp;

  @JsonKey(name: 'is_approved', fromJson: boolFromJson, toJson: boolToJson)
  final bool isApproved;

  const Comment({
    required this.id,
    required this.pollId,
    required this.userId,
    required this.comment,
    required this.timestamp,
    this.isApproved = false,
  });

  factory Comment.fromJson(Json json) => _$CommentFromJson(json);

  Json toJson() => _$CommentToJson(this);
}
