import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    
    data = data.isNotEmpty? data : ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    String bgImage= data['isDaytime']? 'daytime.jpg' : 'nighttime.jpg';
    Color? bgColor = data['isDaytime']? Colors.blue : Colors.indigo[700];
    Color? textColor = data['isDaytime']? Colors.indigo[700] : Colors.black;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            )
          ), 
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: <Widget>[
                IconButton(
                  onPressed: () async {
                    dynamic result= await Navigator.pushNamed(context, '/location');
                    setState(() {
                      data={
                        'time': result['time'],
                        'location': result['location'],
                        'isDaytime': result['isDaytime'],
                        'flag': result['flag'],
                      };
                    });
                  },
                  icon: Icon(Icons.edit_location),
                  color: const Color.fromARGB(255, 68, 68, 68),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text(
                    data['location'],
                    style: TextStyle(
                      fontSize: 30.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  )
                ],
                ),
                SizedBox(height: 20.0),
                Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66.0,
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
