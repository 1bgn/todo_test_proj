import 'package:feature_based_arch/features/todo/data/dto/todo_response.dart';

import '../dto/todos_response.dart';

abstract class IToDoRepository{
  Future<TodosResponse> getToDoList(int id);
  //нет прочих дтоошек
  Future<dynamic> addToDo(Map<String,dynamic> body);
  Future<dynamic> updateToDo(Map<String,dynamic> queries);
  Future<dynamic> deleteToDo(Map<String,dynamic> queries);
}