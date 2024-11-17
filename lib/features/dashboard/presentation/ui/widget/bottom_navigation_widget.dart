import 'package:feature_based_arch/features/dashboard/presentation/controller/dashboard_controller.dart';
import 'package:feature_based_arch/features/dashboard/presentation/state/dashboard_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class BottomNavigationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardController(),
      child: BlocBuilder<DashboardController  , DashboardState>(
        builder: (context, state) {
          return NavigationBar(
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.settings), label: 'Settings'),

            ],
            selectedIndex: state.pageIndex,
            onDestinationSelected: (value)=>_onItemSelected(context,value),
          );
        },
      ),
    );
  }

  void _onItemSelected(BuildContext context,int index) {
    context.read<DashboardController>().setPageIndex(index);
    switch (index) {
      case 0:
        GoRouter.of(context).go("/");
        break;
      case 1:
        GoRouter.of(context).go("/setting");

        break;
      default:
        throw Exception("No item found");
    }
  }
}
