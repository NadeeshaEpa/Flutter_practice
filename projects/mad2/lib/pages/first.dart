import 'package:flutter/material.dart';
import 'package:mad2/pages/home.dart';
import 'package:mad2/pages/settings.dart';
import 'package:mad2/pages/profile.dart';

class First extends StatelessWidget {
  First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: const Text('First Page'),
        backgroundColor: Colors.purple[400],
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.purple[200],
      //   child: Column(
      //     children: [
      //       DrawerHeader(
      //           child: Icon(
      //         Icons.favorite,
      //         size: 48,
      //       )),
      //       ListTile(
      //         leading: Icon(Icons.home),
      //         title: Text('H O M E'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/homepage');
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('S E T T I N G S'),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.pushNamed(context, '/settings');
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.pushNamed(context, '/second');
      //     },
      //     child: const Text('Go to Second Page'),
      //   ),
      // ),
    );
  }
}
