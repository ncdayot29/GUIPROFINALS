import 'package:flutter/material.dart';
import 'package:to_do_app/util/my_button.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue[100],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),
          ),

        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            
            MyButton(text: "Save", onPressed: onSave),

            const SizedBox(width: 5),

            MyButton(text: "Cancel", onPressed: onCancel),
          ],
        )

        ],),
      ),
    );
  }
}