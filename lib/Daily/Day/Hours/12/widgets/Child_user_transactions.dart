import 'package:flutter/material.dart';

import 'new_child.dart';
import 'child_list.dart';
import '../models/Child.dart';
import '../DataBase/Database_helper.dart';
import 'package:sqflite/sqflite.dart';

class Child_UserTransactions extends StatefulWidget {
  @override
  _Child_UserTransactionsState createState() => _Child_UserTransactionsState();
}

class _Child_UserTransactionsState extends State<Child_UserTransactions> {
  List<Child> Child_userTransactions = [];

  void _addNewChild(String txTitle, Child newTx) async {
    final newTx = Child(title: txTitle);
    int result = await C_DataBaseHelper().insertChild(newTx);
    if (result != 0) {
      // _showSnackBar(context, 'Note Deleted Successfully');
      updateListView();
    }
  }

  void _deleteChild(String id) async {
    setState(() async {
      Child_userTransactions.removeWhere((tx) => tx.id == id);
      int result = await C_DataBaseHelper().deleteChild(id.toString());
      if (result != 0) {
        // _showSnackBar(context, 'Note Deleted Successfully');
        updateListView();
      }
    });
  }

  // void _addNewTransaction(String txTitle) {
  //   final newTx = Child(
  //     title: txTitle,
  //   );

  //   setState(() {
  //     Child_userTransactions.add(newTx);
  //   });
  // }

  //defining the _deleteTransaction() method that takes a String id as a parameter
  // void _deleteTransaction(String id) {
  //   //setState sets the state after deleting the element
  //   setState(() {
  //     Child_userTransactions.removeWhere((tx) => tx.id == id);
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    if (Child_userTransactions == null) {
      Child_userTransactions = List<Child>();
      updateListView();
    }
    updateListView();
    return Column(
      children: <Widget>[
        NewChild(_addNewChild),
        ChildList(Child_userTransactions, _deleteChild),
      ],
    );
  }

  void updateListView() {
    final Future<Database> dbFuture = C_DataBaseHelper().initializeDatabase();
    dbFuture.then((database) {
      Future<List<Child>> noteListFuture = C_DataBaseHelper().getChildList();
      noteListFuture.then((Child_userTransactions) {
        setState(() {
          this.Child_userTransactions = Child_userTransactions;
        });
      });
    });
  }
}
