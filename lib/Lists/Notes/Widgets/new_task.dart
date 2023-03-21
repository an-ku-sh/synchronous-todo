// importing core dart packages
import 'package:flutter/material.dart';
import 'package:synchronous/Home_Page/Gradient.dart';
import '../DataBase/Database_helper.dart';
import '../Models/Task.dart';

//defining NewTransaction as a stateful widget
class NewTask extends StatefulWidget {
  //passing addTx as a parameter into NewTransaction
  NewTask(this.addTx);
  //instantiating addTx having type Function
  final Function addTx;

  @override
  _NewTaskState createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  //defining _titleController as a TextEditingController()
  DataBaseHelper helper = DataBaseHelper();
  final _titleController = TextEditingController();
  Task task;

  void updateTitle() {
    task.title = _titleController.text;
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }

  void _save() async {
    final enteredTitle = _titleController.text;
    widget.addTx(enteredTitle, task);
    int result;
    if (task.id != null) {
      // Case 1: Update operation
      result = await helper.updateTask(task, task.id.toString());
    } else {
      // Case 2: Insert Operation
      result = await helper.insertTask(task);
    }
    Navigator.of(context).pop();
  }

  // the build method
  @override
  Widget build(BuildContext context) {
    //returning a card
    return Container(
      height: 400,
      alignment: Alignment.topCenter,
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
                              Colors.pink,
                              Colors.red,
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
                        onSubmitted: (_) => updateTitle(),
                        decoration: InputDecoration(
                            hintText: "Add a Note...",
                            border: InputBorder.none),
                      ),
                    ),
                    // // implement camera
                    // IconButton(
                    //   icon: Icon(Icons.camera_enhance_sharp),
                    //   onPressed: () {},
                    // ),
                    IconButton(
                      icon: GradientIcon(
                        Icons.send,
                        25.0,
                        LinearGradient(
                          colors: <Color>[
                            Colors.pink,
                            Colors.red,
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
