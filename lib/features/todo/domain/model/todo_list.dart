import 'package:feature_based_arch/features/todo/domain/model/todo_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_list.freezed.dart';

@freezed
class TodoList with _$TodoList {
  const factory TodoList({
    @Default([]) final List<TodoItem> items,
  }) = _TodoList;
}
