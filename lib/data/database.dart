import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List toDoList = [];

  final _hiveBox = Hive.box('myBox');

  //run tis method if this is the 1st time
  void createInitialData() {
    toDoList = [
      ['Make tutorial', false],
      ['Do exercice', true]
    ];
  }

  void loadData() {
    var list = _hiveBox.get('TODO_LIST');

    if (list != null) {
      toDoList = list;
    }

  }

  void updateDataBase() {
    _hiveBox.put('TODO_LIST', toDoList);
  }
}
