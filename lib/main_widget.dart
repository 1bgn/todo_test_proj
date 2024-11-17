import 'package:feature_based_arch/core/routing/go_router_provider.dart';
import 'package:feature_based_arch/core/service_locator.dart';
import 'package:flutter/material.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final route = getIt.get<GoRouterProvider>();
    return MaterialApp.router(
      title: 'Flutter Demo',
      routerConfig:route.goRouter() ,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}