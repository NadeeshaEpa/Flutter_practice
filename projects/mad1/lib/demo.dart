import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: firstApp(),
  ));
}

class firstApp extends StatefulWidget {
  const firstApp({super.key});

  @override
  State<firstApp> createState() => _firstAppState();
}

class _firstAppState extends State<firstApp> {
  int level = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(
          'VentureVerse',
          style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.white,
              fontFamily: 'poppins'),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            level += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/two.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
            ),
            Text(
              'Name',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontFamily: 'poppins'),
            ),
            SizedBox(height: 10.0),
            Text(
              'Nadeesha Nethmini',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.amberAccent[200],
                  fontFamily: 'poppins'),
            ),
            SizedBox(height: 30.0),
            Text(
              'Role',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontFamily: 'poppins'),
            ),
            SizedBox(height: 10.0),
            Text(
              'Entrepreneur',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.amberAccent[200],
                  fontFamily: 'poppins'),
            ),
            SizedBox(height: 30.0),
            Text(
              'Rating',
              style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.white,
                  fontFamily: 'poppins'),
            ),
            SizedBox(height: 10.0),
            Text(
              '$level',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                  color: Colors.amberAccent[200],
                  fontFamily: 'poppins'),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                  'nnadeesha128@gmail.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                      fontFamily: 'poppins'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
