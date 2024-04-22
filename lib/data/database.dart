import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];
  final myBox = Hive.box("myBox");

  void createInitialData() {
    todoList = [
      ["Building this todo app on flutter", true],
    ];
  }

  void loadData() {
    todoList = myBox.get("TODOLIST");
  }

  void updateData() {
    myBox.put("TODOLIST", todoList);
  }
}
