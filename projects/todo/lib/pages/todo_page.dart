import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/data/database.dart';
import 'package:todo/util/dialog_box.dart';
import 'package:todo/util/todo_tile.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final myBox = Hive.box('mybox');
  TodoDatabase db = TodoDatabase();

  @override
  void initState() {
    if (myBox.get("TODOLIST") == null) {
      db.createInitialData();
      db.updateDatabase();
    } else {
      db.loadData();
    }
    super.initState();
  }

  final myController = TextEditingController();

  void checkBoxChanged(bool? value, int index) {
    setState(() {
      db.todolist[index]["taskCompleted"] =
          !(db.todolist[index]["taskCompleted"]);
    });
    db.updateDatabase();
  }

  void saveNewTask() {
    setState(() {
      db.todolist.add({
        "taskName": myController.text,
        "taskCompleted": false,
      });
      myController.clear();
    });
    Navigator.pop(context);
    db.updateDatabase();
  }

  void cancelNewTask() {
    Navigator.pop(context);
  }

  void createNewTask() {
    showDialog(
      context: context,
      builder: (context) {
        return DialogBox(
          controller: myController,
          onSave: saveNewTask,
          onCancel: cancelNewTask,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Center(
          child: Text(
            'ToDo',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        child: Icon(Icons.add),
        backgroundColor: Colors.blue[600],
      ),
      body: ListView.builder(
        itemCount: db.todolist.length,
        itemBuilder: (context, index) {
          return TodoTile(
            taskName: db.todolist[index]["taskName"],
            taskCompleted: db.todolist[index]["taskCompleted"],
            onChanged: (value) => checkBoxChanged(value, index),
            deleteTask: (context) {
              setState(() {
                db.todolist.removeAt(index);
              });
              db.updateDatabase();
            },
          );
        },
      ),
    );
  }
}
