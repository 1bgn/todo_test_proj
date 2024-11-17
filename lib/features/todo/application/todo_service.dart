import 'package:feature_based_arch/core/exception/failure.dart';
import 'package:feature_based_arch/features/todo/application/itodo_service.dart';
import 'package:feature_based_arch/features/todo/data/dto/todo_response.dart';
import 'package:feature_based_arch/features/todo/data/dto/todos_response.dart';
import 'package:feature_based_arch/features/todo/data/repository/itodo_repository.dart';
import 'package:feature_based_arch/features/todo/domain/model/todo_item.dart';
import 'package:feature_based_arch/features/todo/domain/model/todo_list.dart';

class TodoService implements ITodoService {
  final IToDoRepository _iToDoRepository;

  TodoService(this._iToDoRepository);

  @override
  Future addToDo(Map<String, dynamic> body) {
    // TODO: implement addToDo
    throw UnimplementedError();
  }

  @override
  Future deleteToDo(Map<String, dynamic> queries) {
    // TODO: implement deleteToDo
    throw UnimplementedError();
  }

  @override
  Future<TodoList> getToDoList(int id) async {
    try {
      final response = await _iToDoRepository.getToDoList(id);
      return _mapTodoList(response);
    } on Failure catch (_) {
      rethrow;
    }
  }

  @override
  Future updateToDo(Map<String, dynamic> queries) {
    // TODO: implement updateToDo
    throw UnimplementedError();
  }

  TodoItem _mapToDoItem(ToDoResponse toDoResponse) => TodoItem(
      id: toDoResponse.id,
      body: toDoResponse.body,
      note: toDoResponse.note,
      status: toDoResponse.status,
      title: toDoResponse.title,
      userId: toDoResponse.userId,
      createdAt: toDoResponse.createdAt,);

  TodoList _mapTodoList(TodosResponse todos)=>TodoList(items: todos.data.map((e)=>_mapToDoItem(e)).toList(),);
}
