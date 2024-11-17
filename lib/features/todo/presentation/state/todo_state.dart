import 'package:feature_based_arch/features/todo/domain/model/todo_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'todo_state.freezed.dart';
@freezed
class TodoState with _$TodoState{
  const factory TodoState({
  @Default(false) final bool isLoading,
  @Default(false) final bool isUploaded,
  @Default(false) final bool isDeleted,
  @Default(false) final bool isReadonly,
  @Default({}) final Map<String,dynamic> formData,
  @Default([]) final List<TodoItem> items,
  @Default(TodoItem()) final TodoItem item,

}) = _TodoState;
}