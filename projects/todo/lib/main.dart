import 'package:flutter/material.dart';
import 'package:todo/pages/todo_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  //intialize hive
  await Hive.initFlutter();

  //open a box
  var box=await Hive.openBox("mybox");


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TodoPage(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
