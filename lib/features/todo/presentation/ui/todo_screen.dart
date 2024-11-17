import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Todo screen"),

      ),
      bottomNavigationBar: Row(),
    );
  }
}
