import 'package:flutter/foundation.dart';

// class Child {
//   final String id;
//   final String title;

//   Child({
//     @required this.id,
//     @required this.title,
//   });
// }

//defining Task as a Data Model to create objects
//Task is just a class
class Child {
  // properties
  int id;
  String title;

  // Default constructor
  Child({this.id, this.title});

  // Getters
  int get _id => id;
  String get _title => title;

  // Setters
  set _title(String newTitle) {
    this.title = newTitle;
  }

  // Convert a Task object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    return map;
  }

  // Extract a Task object from a Map object
  Child.fromMapObject(Map<String, dynamic> map) {
    this.id = map['id'];
    this.title = map['title'];
  }
}
