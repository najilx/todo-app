import 'package:flutter/material.dart';
import 'package:todo_app/utils/my_button.dart';

class DailogBox extends StatelessWidget {
  DailogBox({super.key, required this.controller,required this.onCancel,required this.onSave});
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellowAccent,
      content: Container(
        height: 120,
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new tak"),
            ),
            Row(
              children: [
                MyButton(text: "Save", onPressed: onSave),
                const SizedBox(
                  width: 8,
                ),
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
