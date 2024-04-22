import "package:flutter/material.dart";
import "package:todo/components/my_button.dart";

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Colors.yellow[300],
        content: Container(
            height: 200,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter task name",
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyButton(text: "Cancel", onPressed: onCancel),
                      const SizedBox(width: 8),
                      MyButton(text: "Save", onPressed: onSave)
                    ],
                  )
                ])));
  }
}
