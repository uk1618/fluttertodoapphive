import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];
  final _myBox = Hive.box('mybox');

  //? run this method if this is the 1st time ever opening this app
  void createInitialData() {
    todoList = [
      ["Create New Task", false],
      ["Delete This Task", true],
    ];
  }

  //? load the data from database
  void loadData() {
    todoList = _myBox.get("TodoList");
  }

  //? update the database
  void updateDataBase() {
    _myBox.put("TodoList", todoList);
  }
}
