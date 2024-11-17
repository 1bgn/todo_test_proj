import 'package:feature_based_arch/features/dashboard/presentation/ui/widget/bottom_navigation_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  final Widget child;
  const DashboardScreen({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
