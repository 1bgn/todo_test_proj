import 'dart:convert';
import 'dart:io';

import 'package:feature_based_arch/core/exception/failure.dart';
import 'package:feature_based_arch/core/extension/http_response_error.dart';
import 'package:feature_based_arch/features/todo/data/api/itodo_api_service.dart';
import 'package:feature_based_arch/features/todo/data/dto/todos_response.dart';
import 'package:feature_based_arch/features/todo/data/repository/itodo_repository.dart';

class TodoRepository implements IToDoRepository {
  final IToDoApiService iToDoApiService;

  TodoRepository({required this.iToDoApiService});

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
  Future<TodosResponse> getToDoList(int id) async {
    try {
      final response = await iToDoApiService.getToDoList(id);
      if (response.statusCode != HttpStatus.created) {
        throw Failure(message: response.httpResponseError());
      }
      return TodosResponse.fromJson(json.decode(response.body));
    } catch (e) {
      throw Failure(message: e.toString());
    }
  }

  @override
  Future updateToDo(Map<String, dynamic> queries) {
    // TODO: implement updateToDo
    throw UnimplementedError();
  }
}
