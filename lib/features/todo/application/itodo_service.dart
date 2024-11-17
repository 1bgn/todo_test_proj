import 'package:feature_based_arch/features/todo/domain/model/todo_item.dart';
import 'package:feature_based_arch/features/todo/domain/model/todo_list.dart';

abstract class ITodoService {
  Future<TodoList> getToDoList(int id);
  //нет прочих дтоошек
  Future<dynamic> addToDo(Map<String,dynamic> body);
  Future<dynamic> updateToDo(Map<String,dynamic> queries);
  Future<dynamic> deleteToDo(Map<String,dynamic> queries);
}