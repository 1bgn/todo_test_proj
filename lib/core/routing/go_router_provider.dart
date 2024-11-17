import 'package:feature_based_arch/core/routing/route_name.dart';
import 'package:feature_based_arch/features/dashboard/presentation/ui/dashboard_screen.dart';
import 'package:feature_based_arch/features/settings/presentation/ui/settings_screen.dart';
import 'package:feature_based_arch/features/todo/presentation/ui/todo_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey(debugLabel: 'root');
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey(debugLabel: 'shell');

class GoRouterProvider{
  GoRouter goRouter(){
    return GoRouter(navigatorKey: _rootNavigatorKey,initialLocation: "/",routes: [
      ShellRoute(routes: [
        GoRoute(path: "/",name: homeRoute,pageBuilder: (context,state){
          return NoTransitionPage(child: TodoScreen(key: state.pageKey,));
        }),
        GoRoute(path: "/setting",name: settingsRoute,pageBuilder: (context,state){

          return NoTransitionPage(child: SettingsScreen(key: state.pageKey,));
        }),
      ],builder: (context,state,child){
        return DashboardScreen(key:state.pageKey,child: child,);
      })
    ]);
  }
}