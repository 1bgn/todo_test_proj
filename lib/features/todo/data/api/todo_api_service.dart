import 'package:feature_based_arch/core/mixin/uri_mixin.dart';
import 'package:feature_based_arch/features/todo/data/api/itodo_api_service.dart';
import "package:http/http.dart" as http;

class ToDoApiService  with UriMixin implements IToDoApiService{
  final http.Client client;

  ToDoApiService(this.client);
  @override
  Future<http.Response> addToDo(Map<String, dynamic> body) async {
    try{
    final url = getUri('/addToDo');
    return await http.post(url,body: body);
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<http.Response> deleteToDo(Map<String, dynamic> queries)async {
    try{
      final url = getUri('/deleteToDo',queryParameters: queries);
      return await http.delete(url,);
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<http.Response> getToDoList(int id) async {
    try{
      final url = getUri('/getToDoList/$id');
      return await http.get(url,);
    }catch(e){
      rethrow;
    }
  }

  @override
  Future<http.Response> updateToDo(Map<String, dynamic> queries) async {
    try{
      final url = getUri('/addToDo',queryParameters: queries);
      return await http.patch(url,);
    }catch(e){
      rethrow;
    }
  }
}