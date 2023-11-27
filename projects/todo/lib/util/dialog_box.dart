import 'package:flutter/material.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback? onSave;
  VoidCallback? onCancel;

  DialogBox({ 
    super.key, 
    this.controller,
    this.onSave,
    this.onCancel,
    }
  );

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[100],
      content: Container(
        height: 150,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter Task Name',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: onSave,
                    child: Text('Create'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[600],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: onCancel,
                    child: Text('Cancel'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue[600],
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
