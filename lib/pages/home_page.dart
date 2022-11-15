import 'package:flutter/material.dart';
import 'package:new_project1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  final int days = 30;
  final String name = "Apekshya";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child: Container(
          child: Text("Hello this is $days days of flutter with $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
