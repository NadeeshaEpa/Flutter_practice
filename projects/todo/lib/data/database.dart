import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todolist = [];

  final mybox = Hive.box('mybox');

  //run this method if this is the 1st time opening the app
  void createInitialData() {
    todolist = [
      {
        "Make Tutorial",
        false,
      },
      {
        "Do Exercise",
        false,
      },
      {
        "Shopping",
        false,
      },
    ];
  }

  //load data from db
  void loadData() {
    todolist = mybox.get("TODOLIST");
  }

  void updateDatabase() {
    mybox.put("TODOLIST", todolist);
  }
}
