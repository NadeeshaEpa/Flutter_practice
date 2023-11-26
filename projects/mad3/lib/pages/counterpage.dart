import 'package:flutter/material.dart';

class Counterpage extends StatefulWidget {
  const Counterpage({super.key});

  @override
  State<Counterpage> createState() => _CounterpageState();
}

class _CounterpageState extends State<Counterpage> {
  int counter = 0;

  void onPressed() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counterpage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'you have pushed the button this many times:',
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
               ),
            ),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: onPressed, 
              icon: Icon(Icons.add),
              color: Colors.blue,
              iconSize: 40,
              //background
              style: IconButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: CircleBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
