import 'package:flutter/material.dart';
import 'package:mad1/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(location: 'Colombo', flag: 'colombo.png', url: 'Asia/Colombo'),
    WorldTime(location: 'London', flag: 'london.png', url: 'Europe/London'),
    WorldTime(location: 'Athens', flag: 'athens.png', url: 'Europe/Athens'),
    WorldTime(location: 'Cairo', flag: 'cairo.png', url: 'Africa/Cairo'),
    WorldTime(location: 'Nairobi', flag: 'nairobi.png', url: 'Africa/Nairobi'),
    WorldTime(location: 'Chicago', flag: 'chicago.png', url: 'America/Chicago'),
    WorldTime(location: 'New York', flag: 'newyork.png', url: 'America/New_York'),
    WorldTime(location: 'Seoul', flag: 'seoul.png', url: 'Asia/Seoul'),
    WorldTime(location: 'Jakarta', flag: 'jakarta.jpeg', url: 'Asia/Jakarta'),
  ];

  void updateTime(index) async{
    WorldTime instance = locations[index];
    await instance.getTime();
    //navigate to home screen
    Navigator.pop(context,{
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDaytime': instance.isDaytime, 
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
