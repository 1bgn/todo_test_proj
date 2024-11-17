import 'package:feature_based_arch/core/service_locator.dart';
import 'package:feature_based_arch/main_widget.dart';
import 'package:flutter/material.dart';

void main() {
  serviceLocatorInit();
  runApp(const MainWidget());
}


