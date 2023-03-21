//importing core packages
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';

//importing other elements into the base file
import 'Models/Task.dart';
import 'Widgets/new_task.dart';
import 'Widgets/task_list.dart';
import 'DataBase/Database_helper.dart';

//Defining ToDo as a stateless widget
//its the base for ToDo+
class NewYear extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(platform: TargetPlatform.iOS),
      title: 'Synchronus',
      //passing MyHomePage() as home:
      home: MyHomePage(),
    );
  }
}

//defining MyHomePage as a stateful widget
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //defining a list names _userTransactions which is of type Transaction
  List<Task> _userTasks = [];

  void _addNewTask(String txTitle, Task newTx) async {
    final newTx = Task(title: txTitle, isDone: 'false');
    int result = await DataBaseHelper().insertTask(newTx);
    if (result != 0) {
      // _showSnackBar(context, 'Note Deleted Successfully');
      updateListView();
    }
  }

//defining the ModalSheet
  void _AddNewTask(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          //passing _addNewTransaction into NewTransaction()
          child: NewTask(_addNewTask),
          //to close the bottom sheet upon pressing elsewhere
          behavior: HitTestBehavior.opaque,
        );
        updateListView();
      },
    );
  }

  void _deleteTask(String id) async {
    setState(() async {
      _userTasks.removeWhere((tx) => tx.id == id);
      int result = await DataBaseHelper().deleteTask(id.toString());
      if (result != 0) {
        // _showSnackBar(context, 'Note Deleted Successfully');
        updateListView();
      }
    });
  }

  void _markAsDone(String newtitle, Task newTx, String id) async {
    // bool done = !Done;
    final newTx = Task(title: newtitle, isDone: 'true');
    int result1 = await DataBaseHelper().deleteTask(id);
    if (result1 != 0) {
      // _showSnackBar(context, 'Note Deleted Successfully');
      updateListView();
    }
    int result = await DataBaseHelper().insertTask(newTx);
    if (result != 0) {
      // _showSnackBar(context, 'Note Deleted Successfully');
      updateListView();
    }
  }

  //the build method
  @override
  Widget build(BuildContext context) {
    if (_userTasks == null) {
      _userTasks = List<Task>();
      updateListView();
    }
    updateListView();
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 10),
              child: Badge(
                  badgeColor: Colors.white,
                  badgeContent: Text(_userTasks.length.toString()),
                  child: Icon(Icons.ac_unit_sharp)),
            )
          ],
          title: Text(
            'New Year Resolutions',
            style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontFamily: 'KaushanScript-Regular',
                fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.teal[700],
        ),

        body: Stack(children: [
          //the container
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: const AssetImage("assets/images/IA1.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          //the SingleChildScrollView
          SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: EdgeInsets.only(bottom: bottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TasksList(_userTasks, _deleteTask, _markAsDone),
                ],
              ),
            ),
          ),
        ]),
        //the extended FAB used to show the modal sheet
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          label: Text(
            'Add a Resolution',
            style: TextStyle(
                color: Colors.black,
                fontSize: 21,
                fontFamily: 'KaushanScript-Regular',
                fontWeight: FontWeight.w600),
          ),
          icon: Icon(Icons.add),
          backgroundColor: Colors.teal,
          onPressed: () => _AddNewTask(context),
        ),
      ),
    );
  }

  // updateListView()

  void updateListView() {
    final Future<Database> dbFuture = DataBaseHelper().initializeDatabase();
    dbFuture.then((database) {
      Future<List<Task>> noteListFuture = DataBaseHelper().getNoteList();
      noteListFuture.then((_userTasks) {
        setState(() {
          this._userTasks = _userTasks;
        });
      });
    });
  }
}
