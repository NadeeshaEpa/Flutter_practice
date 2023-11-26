import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {

  TextEditingController mycontroller = TextEditingController();

  String greetingMsg = '';

  void greetUser(){
    String username = mycontroller.text;
    setState(() {
      greetingMsg = 'Hello ${mycontroller.text}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(greetingMsg),
              TextField(
                controller: mycontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: greetUser,
                child: Text('Greet User'),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
