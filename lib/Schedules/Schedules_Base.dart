import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import './widgets/new_schedule.dart';
import './widgets/schedule_list.dart';
import './models/Schedule.dart';
import './DataBase/S_Database_helper.dart';
import 'package:sqflite/sqflite.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class SW extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(platform: TargetPlatform.iOS),
      title: 'Synchronus',
      //passing MyHomePage() as home:
      home: SW2(),
    );
  }
}

class SW2 extends StatefulWidget {
  @override
  _SW2State createState() => _SW2State();
}

class _SW2State extends State<SW2> {
  List<Schedule> _userSchedules = [];

  void _addNewSchedule(
    String txTitle,
    DateTime chosenDate,
    Schedule newSC,
    // TimeOfDay chosenTime
  ) async {
    final newSC = Schedule(
      title: txTitle,
      date: chosenDate.toString(),
      isDone: 'false',
      // time: chosenTime.toString()
    );
    int result = await S_DataBaseHelper().insertSchedule(newSC);
    if (result != 0) {
      // _showSnackBar(context, 'Note Deleted Successfully');
      updateListView();
    }
  }

  void _AddNewSchedule(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          child: NewSchedule(_addNewSchedule),
          behavior: HitTestBehavior.opaque,
        );
        updateListView();
      },
    );
  }

  void _deleteSchedule(String id) async {
    setState(() async {
      _userSchedules.removeWhere((tx) => tx.id == id);
      int result = await S_DataBaseHelper().deleteSchedule(id.toString());
      if (result != 0) {
        // _showSnackBar(context, 'Note Deleted Successfully');
        updateListView();
      }
    });
    updateListView();
  }

  void _markAsDone(
      String newtitle, Schedule newTx, String id, String newDate) async {
    // bool done = !Done;
    final newTx = Schedule(title: newtitle, isDone: 'true', date: newDate);
    int result1 = await S_DataBaseHelper().deleteSchedule(id);
    if (result1 != 0) {
      // _showSnackBar(context, 'Note Deleted Successfully');
      updateListView();
    }
    int result = await S_DataBaseHelper().insertSchedule(newTx);
    if (result != 0) {
      // _showSnackBar(context, 'Note Deleted Successfully');
      updateListView();
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_userSchedules == null) {
      _userSchedules = List<Schedule>();
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
                badgeContent: Text(_userSchedules.length.toString()),
                child: Icon(Icons.event_available),
              ),
            )
          ],
          title: Text(
            'Schedules',
            style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontFamily: 'KaushanScript-Regular',
                fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.teal[700],
        ),
        body: Stack(children: [
          Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: const AssetImage("assets/images/IA20.jpg"),
              fit: BoxFit.cover,
            )),
          ),
          SingleChildScrollView(
            reverse: true,
            child: Padding(
              padding: EdgeInsets.only(bottom: bottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ScheduleList(_userSchedules, _deleteSchedule, _markAsDone),
                ],
              ),
            ),
          ),
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.teal,
          label: Text(
            'Add to Schedule',
            style: TextStyle(
                color: Colors.black,
                fontSize: 21,
                fontFamily: 'KaushanScript-Regular',
                fontWeight: FontWeight.w600),
          ),
          icon: Icon(Icons.add),
          onPressed: () => _AddNewSchedule(context),
        ),
      ),
    );
  }

  void updateListView() {
    final Future<Database> dbFuture = S_DataBaseHelper().initializeDatabase();
    dbFuture.then((database) {
      Future<List<Schedule>> noteListFuture = S_DataBaseHelper().getSCList();
      noteListFuture.then((_userSchedules) {
        setState(() {
          this._userSchedules = _userSchedules;
        });
      });
    });
  }
}
