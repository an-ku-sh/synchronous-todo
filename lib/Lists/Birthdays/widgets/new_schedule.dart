import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import 'package:synchronous/Home_Page/Gradient.dart';
import '../models/Schedule.dart';
import '../DataBase/S_Database_helper.dart';

class NewSchedule extends StatefulWidget {
  final Function addTx;

  NewSchedule(this.addTx);

  @override
  _NewScheduleState createState() => _NewScheduleState();
}

class _NewScheduleState extends State<NewSchedule> {
  S_DataBaseHelper helper = S_DataBaseHelper();
  final _titleController = TextEditingController();
  DateTime _selectedDate;
  // TimeOfDay _selectedTime;
  Schedule schedule;

  void updateSC() {
    schedule.title = _titleController.text;
    schedule.date = _selectedDate.toString();
    // schedule.time = _selectedTime.toString();
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }

  void _save() async {
    final enteredTitle = _titleController.text;
    final enteredDate = _selectedDate;
    // final enteredTime = _selectedTime;
    String isDone = 'false';
    if (enteredDate == null || enteredTitle.isEmpty) {
      return;
    }
    widget.addTx(enteredTitle, enteredDate, schedule);
    int result;
    if (schedule.id != null) {
      // Case 1: Update operation
      result = await helper.updateSchedule(schedule);
    } else {
      // Case 2: Insert Operation
      result = await helper.insertSchedule(schedule);
    }
    Navigator.of(context).pop();
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(3030),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData(
            primaryColor: Colors.teal,
            accentColor: Colors.tealAccent,
            colorScheme: ColorScheme.light(primary: Colors.teal),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child,
        );
      },
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
    print('...');
  }

  // void _presentTimePicker() {
  //   showTimePicker(
  //     context: context,
  //     initialTime: TimeOfDay.now(),
  //     // initialDate: DateTime.now(),
  //     // firstDate: DateTime.now(),
  //     // lastDate: DateTime(3030),
  //   ).then((pickedTime) {
  //     if (pickedTime == null) {
  //       return;
  //     }
  //     setState(() {
  //       _selectedTime = pickedTime;
  //     });
  //   });
  //   print('...');
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      height: 400,
      child: Card(
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35.0),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 3), blurRadius: 5, color: Colors.grey)
                  ],
                ),
                child: Row(
                  children: [
                    IconButton(
                        icon: GradientIcon(
                          Icons.ac_unit_sharp,
                          30.0,
                          LinearGradient(
                            colors: <Color>[
                              Colors.yellow,
                              Colors.pink,
                              Colors.blue,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        onPressed: () {}),
                    Expanded(
                      child: TextField(
                        controller: _titleController,
                        onSubmitted: (_) => updateSC(),
                        decoration: InputDecoration(
                            hintText: "Write their name...",
                            border: InputBorder.none),
                      ),
                    ),
                    IconButton(
                      icon: GradientIcon(
                        Icons.calendar_today,
                        25.0,
                        LinearGradient(
                          colors: <Color>[
                            Colors.yellow,
                            Colors.pink,
                            Colors.blue,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      onPressed: _presentDatePicker,
                    ),
                    IconButton(
                      icon: GradientIcon(
                        Icons.send,
                        25.0,
                        LinearGradient(
                          colors: <Color>[
                            Colors.yellow,
                            Colors.pink,
                            Colors.blue,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          debugPrint("Save button clicked");
                          _save();
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
