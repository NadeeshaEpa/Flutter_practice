import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[300],
      ),
      body:Row(
        children: <Widget>[
          Expanded(
            child: Image.network('https://images.unsplash.com/photo-1699470397862-f2bb74659a09?q=80&w=2013&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
            flex: 3,
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.amber,
              padding: EdgeInsets.all(30.0),
              child: Text('1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.cyan,
              padding: EdgeInsets.all(30.0),
              child: Text('2'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.pinkAccent,
              padding: EdgeInsets.all(30.0),
              child: Text('3'),
            ),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.red[300],
      ),
    );
  }
}
