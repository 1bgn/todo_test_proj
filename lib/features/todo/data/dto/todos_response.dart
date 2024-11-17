
import 'package:feature_based_arch/features/todo/data/dto/todo_response.dart';
import 'package:json_annotation/json_annotation.dart';
part 'todos_response.g.dart';
@JsonSerializable()
class TodosResponse{
  final int currentPage;
  final List<ToDoResponse> data;
  factory TodosResponse.fromJson(Map<String, dynamic> json) =>
      _$TodosResponseFromJson(json);

  TodosResponse(this.currentPage, this.data);
  Map<String, dynamic> toJson() => _$TodosResponseToJson(this);
}