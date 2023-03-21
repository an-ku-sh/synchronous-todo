import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import '../models/Child.dart';

class C_DataBaseHelper {
  // singletons
  static C_DataBaseHelper _dataBaseHelper; //singleton DataBaseHelper
  static Database _database; //singleton Database

  String ChildTable = 'MH6';
  String colId = 'id';
  String colTitle = 'title';

  C_DataBaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

  factory C_DataBaseHelper() {
    if (_dataBaseHelper == null) {
      _dataBaseHelper = C_DataBaseHelper
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
    String path = directory.path + 'MH6.db';

    // Open/create the database at a given path
    var notesDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return notesDatabase;
  }

  // _createDb() defination
  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $ChildTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colTitle TEXT)');
  }

  // Fetch Operation: Get all Task objects from database
  Future<List<Map<String, dynamic>>> getChildMapList() async {
    Database db = await this.database;
    var result = await db.query(ChildTable);
    return result;
  }

  // Insert Operation: Insert a Note object to database
  Future<int> insertChild(Child child) async {
    Database db = await this.database;
    var result = await db.insert(ChildTable, child.toMap());
    return result;
  }

  // Update Operation: Update a Note object and save it to database
  Future<int> updateChild(Child child) async {
    var db = await this.database;
    var result = await db.update(ChildTable, child.toMap(),
        where: '$colId = ?', whereArgs: [child.id]);
    return result;
  }

  // Delete Operation: Delete a Note object from database
  Future<int> deleteChild(String id) async {
    var db = await this.database;
    int result =
        await db.rawDelete('DELETE FROM $ChildTable WHERE $colId = $id');
    return result;
  }

  // Get number of Task objects in database
  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) from $ChildTable');
    int result = Sqflite.firstIntValue(x);
    return result;
  }

  // Get the 'Map List' [ List<Map> ] and convert it to 'Task List' [ List<Task> ]
  Future<List<Child>> getChildList() async {
    var ChildMapList = await getChildMapList(); // Get 'Map List' from database
    int count =
        ChildMapList.length; // Count the number of map entries in db table

    List<Child> ChildList = List<Child>();
    // For loop to create a 'Note List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      ChildList.add(Child.fromMapObject(ChildMapList[i]));
    }

    return ChildList;
  }
}
