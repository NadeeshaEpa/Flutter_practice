import 'package:flutter/material.dart';
import 'package:mad2/pages/first.dart';
import 'package:mad2/pages/home.dart';
import 'package:mad2/pages/settings.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      // home: Scaffold(
      //   backgroundColor: Colors.purple[200],
      //   appBar: AppBar(
      //     title: const Text('My App'),
      //     backgroundColor: Colors.purple[600],
      //     elevation: 0.0,
      //     leading: Icon(Icons.menu),
      //     actions: [
      //       IconButton(
      //         onPressed: () {},
      //         icon: Icon(Icons.logout),            
      //       ),
      //     ],
      //   ),
      //   body: Center(
      //     child: Container(
      //       height: 300,
      //       width: 300,
      //       padding: const EdgeInsets.all(20.0),
      //       decoration: BoxDecoration(
      //         color: Colors.purple[600],
      //         borderRadius: BorderRadius.circular(16),
      //       ),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           SizedBox(height: 30),
      //           Text(
      //             'Nadeesha Nethmini',
      //             style: TextStyle(
      //               fontSize: 29,
      //               color: Colors.white,
      //               fontWeight: FontWeight.bold,
      //             ),
      //           ),
      //           SizedBox(height: 30),
      //           Icon(
      //             Icons.favorite,
      //             color: Colors.white,
      //             size: 50.0,
      //           ),
      //           SizedBox(height: 30),
      //           ElevatedButton(
      //             style: ElevatedButton.styleFrom(
      //               backgroundColor: Colors.purple[300],
      //               padding: const EdgeInsets.all(10.0),
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(10),
      //               ),
      //             ),
      //             child: Text(
      //               'Go to First Page',
      //               style: TextStyle(
      //                 fontSize: 20,
      //                 color: Colors.white,
      //               ),   
      //             ),   
      //             onPressed: (){
      //               Navigator.push(
      //                 context, 
      //                 MaterialPageRoute(
      //                   builder: (context) => First(),
      //                 ),
      //               );
      //             },   
      //           )
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      routes: {
        '/first':(context) => First(),
        '/homepage':(context) => Home(),
        '/settings':(context) => Settings()
      },
    );
  }
}
