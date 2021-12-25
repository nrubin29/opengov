import 'package:json_annotation/json_annotation.dart';
import 'package:opengov_common/common.dart';

part 'add_comment.g.dart';

@JsonSerializable()
class AddCommentRequest {
  final int pollId;
  final String comment;

  const AddCommentRequest({required this.pollId, required this.comment});

  factory AddCommentRequest.fromJson(Json json) =>
      _$AddCommentRequestFromJson(json);

  Json toJson() => _$AddCommentRequestToJson(this);
}
