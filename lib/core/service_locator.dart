import 'package:feature_based_arch/core/routing/go_router_provider.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

final getIt = GetIt.instance;

void serviceLocatorInit(){
  getIt.registerFactory(()=>GoRouterProvider());
}