import 'package:json_annotation/json_annotation.dart';

part 'todo_response.g.dart';

@JsonSerializable()
class ToDoResponse{

  factory ToDoResponse.fromJson(Map<String, dynamic> json) =>
      _$ToDoResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ToDoResponseToJson(this);
  final int id;
  @JsonKey(name: "user_id")
  final int userId;
  final String title;
  final String body;
  final String note;
  final int status;
  @JsonKey(name: "created_at")
  final DateTime createdAt;

  ToDoResponse(this.id, this.userId, this.title, this.body, this.note, this.status, this.createdAt);

}