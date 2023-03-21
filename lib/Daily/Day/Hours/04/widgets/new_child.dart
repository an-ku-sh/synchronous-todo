import 'package:flutter/material.dart';
import 'package:synchronous/Home_Page/Gradient.dart';
import '../DataBase/Database_helper.dart';
import '../models/Child.dart';

class NewChild extends StatefulWidget {
  final Function addTx;

  NewChild(this.addTx);

  @override
  _NewChildState createState() => _NewChildState();
}

class _NewChildState extends State<NewChild> {
  C_DataBaseHelper helper = C_DataBaseHelper();
  final titleController = TextEditingController();
  Child child;

  void updateTitle() {
    child.title = titleController.text;
    // final enteredTitle = _titleController.text;
    // widget.addTx(enteredTitle, task);
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }

  void _save() async {
    final enteredTitle = titleController.text;
    widget.addTx(enteredTitle, child);
    int result;
    if (child.id != null) {
      // Case 1: Update operation
      result = await helper.updateChild(child);
    } else {
      // Case 2: Insert Operation
      result = await helper.insertChild(child);
    }
    // Navigator.of(context).pop();

    // final enteredTitle = _titleController.text;
    // widget.addTx(enteredTitle, task);
    // // moveToLastScreen();

    // // note.date = DateFormat.yMMMd().format(DateTime.now());
    // int result;
    // if (task.id == null) {
    //   // Case 1: Update operation
    //   result = await helper.updateTask(task);
    // } else {
    //   // Case 2: Insert Operation
    //   result = await helper.insertTask(task);
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
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
                        25.0,
                        LinearGradient(
                          colors: <Color>[
                            Colors.red,
                            Colors.yellow,
                            Colors.orange,
                            Colors.red,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      onPressed: () {}),
                  Expanded(
                    child: TextField(
                      controller: titleController,
                      onSubmitted: (_) => updateTitle(),
                      decoration: InputDecoration(
                          hintText: "Add tasks...", border: InputBorder.none),
                    ),
                  ),
                  IconButton(
                    icon: GradientIcon(
                      Icons.send,
                      25.0,
                      LinearGradient(
                        colors: <Color>[
                          Colors.red,
                          Colors.yellow,
                          Colors.orange,
                          Colors.red,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        debugPrint("Save button clicked");
                        _save();
                        // Navigator.of(context).pop();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
