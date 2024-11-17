import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_item.freezed.dart';

@freezed
class TodoItem with _$TodoItem {
  const factory TodoItem(
      {@Default(0) final int id,
      @Default(0) final int userId,
      @Default('') final String title,
      @Default('') final String body,
      @Default('') final String note,
      @Default(0) final int status,
      @Default(null) final DateTime? createdAt}) = _ToDoItem;
}
