import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../Models/Task.dart';

class DataBaseHelper {
  // singletons
  static DataBaseHelper _dataBaseHelper; //singleton DataBaseHelper
  static Database _database; //singleton Database

  String taskTable = 'LifeGoalstable';
  String colId = 'id';
  String colTitle = 'title';
  String colDone = 'isDone';

  DataBaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

  factory DataBaseHelper() {
    if (_dataBaseHelper == null) {
      _dataBaseHelper = DataBaseHelper
          ._createInstance(); // This is executed only once, singleton object
    }
    return _dataBaseHelper;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  //initializeDatabase() defination
  Future<Database> initializeDatabase() async {
    // Get the directory path for both Android and iOS to store database.
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'LifeGoals.db';

    // Open/create the database at a given path
    var notesDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return notesDatabase;
  }

  // _createDb() defination
  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $taskTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT, $colDone TEXT)');
  }

  // Fetch Operation: Get all Task objects from database
  Future<List<Map<String, dynamic>>> getTaskMapList() async {
    Database db = await this.database;
    var result = await db.query(taskTable);
    return result;
  }

  // Insert Operation: Insert a Note object to database
  Future<int> insertTask(Task task) async {
    Database db = await this.database;
    var result = await db.insert(taskTable, task.toMap());
    return result;
  }

  // Update Operation: Update a Note object and save it to database
  // Future<int> updateTask(Task task) async {
  //   var db = await this.database;
  //   var result = await db.update("taskTable", task.toMap(),
  //       where: '$colId = ?', whereArgs: [task.id]);
  //   return result;
  // }

  Future<int> updateTask(Task task, String id) async {
    var db = await this.database;
    var result = await db.rawUpdate(
        'UPDATE  $taskTable SET $colDone = ${task.isDone} WHERE $colId = $id');
    return result;
  }

  // Delete Operation: Delete a Note object from database
  Future<int> deleteTask(String id) async {
    var db = await this.database;
    int result =
        await db.rawDelete('DELETE FROM $taskTable WHERE $colId = $id');
    return result;
  }

  // Get number of Task objects in database
  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) from $taskTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

  // Get the 'Map List' [ List<Map> ] and convert it to 'Task List' [ List<Task> ]
  Future<List<Task>> getNoteList() async {
    var noteMapList = await getTaskMapList(); // Get 'Map List' from database
    int count =
        noteMapList.length; // Count the number of map entries in db table

    List<Task> noteList = List<Task>();
    // For loop to create a 'Note List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      noteList.add(Task.fromMapObject(noteMapList[i]));
    }

    return noteList;
  }
}
