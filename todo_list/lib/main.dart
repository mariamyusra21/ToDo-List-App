import 'package:flutter/material.dart';
import 'package:todo_list/screens/tasks_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
