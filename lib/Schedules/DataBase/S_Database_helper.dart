import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../models/Schedule.dart';

class S_DataBaseHelper {
  // singletons
  static S_DataBaseHelper _dataBaseHelper; //singleton DataBaseHelper
  static Database _database; //singleton Database

  String scheduleTable = 'Scheduletable';
  String colId = 'id';
  String colTitle = 'title';
  String colDate = 'date';
  String colTime = 'time';
  String colDone = 'isDone';

  S_DataBaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

  factory S_DataBaseHelper() {
    if (_dataBaseHelper == null) {
      _dataBaseHelper = S_DataBaseHelper
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
    String path = directory.path + 'schedules.db';

    // Open/create the database at a given path
    var notesDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return notesDatabase;
  }

  // _createDb() defination
  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $scheduleTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT, $colDate TEXT, $colDone TEXT)');
  }

  // Fetch Operation: Get all Task objects from database
  Future<List<Map<String, dynamic>>> getSCMapList() async {
    Database db = await this.database;
    var result = await db.query(scheduleTable);
    return result;
  }

  // Insert Operation: Insert a Note object to database
  Future<int> insertSchedule(Schedule SC) async {
    Database db = await this.database;
    var result = await db.insert(scheduleTable, SC.toMap());
    return result;
  }

  // Update Operation: Update a Note object and save it to database
  Future<int> updateSchedule(Schedule SC) async {
    var db = await this.database;
    var result = await db.update(scheduleTable, SC.toMap(),
        where: '$colId = ?', whereArgs: [SC.id]);
    return result;
  }

  // Delete Operation: Delete a Note object from database
  Future<int> deleteSchedule(String id) async {
    var db = await this.database;
    int result =
        await db.rawDelete('DELETE FROM $scheduleTable WHERE $colId = $id');
    return result;
  }

  // Get number of Task objects in database
  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) from $scheduleTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

  // Get the 'Map List' [ List<Map> ] and convert it to 'Task List' [ List<Task> ]
  Future<List<Schedule>> getSCList() async {
    var SCMapList = await getSCMapList(); // Get 'Map List' from database
    int count = SCMapList.length; // Count the number of map entries in db table

    List<Schedule> SCList = List<Schedule>();
    // For loop to create a 'Note List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      SCList.add(Schedule.fromMapObject(SCMapList[i]));
    }

    return SCList;
  }
}
