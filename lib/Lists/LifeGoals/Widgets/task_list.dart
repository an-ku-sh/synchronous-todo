// importing core packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
import 'package:synchronous/Home_Page/Gradient.dart';
import './splash_screen.dart';

// importing other elements

import '../Models/Task.dart';

//defining TransactionList as a stateless widget

class TasksList extends StatelessWidget {
  // instantiating a List of type Transaction names transactions
  final List<Task> tasks;
  //instantiating a function names deleteTx
  final Function deleteTx;
  final Function markDone;

  //a constructor that takes transactions and deleteTx as parameters
  TasksList(this.tasks, this.deleteTx, this.markDone);

  //the build method
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      child: tasks.isEmpty
          ? SplashScreenToDo()
          //the listView builder
          : ListView.builder(
              // itemBuilder parameter takes context and index
              itemBuilder: (ctx, index) {
                //returning the element
                return Padding(
                  padding: EdgeInsets.all(9),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 4),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                      ),
                    ),
                    child: Card(
                      elevation: 5,
                      margin: EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 5,
                      ),
                      child: ListTile(
                        leading: GradientIcon(
                          Icons.chevron_right,
                          40.0,
                          LinearGradient(
                            colors: <Color>[
                              Colors.teal,
                              Colors.cyan,
                              Colors.greenAccent,
                              Colors.greenAccent,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        title: Text(
                          tasks[index].title,
                          style: TextStyle(
                              decoration: (tasks[index].isDone == 'true')
                                  ? TextDecoration.lineThrough
                                  : null,
                              fontSize: 21,
                              fontFamily: 'Salsa-Regular',
                              fontWeight: FontWeight.w300),
                        ),
                        trailing: Wrap(
                          spacing: 12, // space between two icons
                          children: <Widget>[
                            InkWell(
                              onTap: () => showDialog<void>(
                                context: context,
                                barrierDismissible:
                                    false, // user must tap button!
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      'You just tapped the "Done" button',
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontFamily: 'KaushanScript-Regular',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Text(
                                            'Mark the Goal as "Done"?',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Salsa-Regular',
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: Text(
                                          'Yeah!',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontFamily: 'Salsa-Regular',
                                              fontWeight: FontWeight.w300),
                                        ),
                                        onPressed: () {
                                          markDone(
                                            tasks[index].title,
                                            tasks[index],
                                            tasks[index].id.toString(),
                                          );
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      TextButton(
                                        child: Text(
                                          'Nope',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontFamily: 'Salsa-Regular',
                                              fontWeight: FontWeight.w300),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              ),
                              child: (tasks[index].isDone == 'true')
                                  ? GradientIcon(
                                      Icons.done_all,
                                      30.0,
                                      LinearGradient(
                                        colors: <Color>[
                                          Colors.teal,
                                          Colors.cyan,
                                          Colors.greenAccent,
                                          Colors.greenAccent,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    )
                                  : Icon(Icons.done_all, size: 30),
                            ), // icon-1
                            InkWell(
                              onTap: () => showDialog<void>(
                                context: context,
                                barrierDismissible:
                                    false, // user must tap button!
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text(
                                      'You just tapped the "Delete" button',
                                      style: TextStyle(
                                          fontSize: 28,
                                          fontFamily: 'KaushanScript-Regular',
                                          fontWeight: FontWeight.w600),
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Text(
                                            'You wanna remove the Goal?',
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Salsa-Regular',
                                                fontWeight: FontWeight.w300),
                                          ),
                                        ],
                                      ),
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        child: Text(
                                          'Yeah!',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontFamily: 'Salsa-Regular',
                                              fontWeight: FontWeight.w300),
                                        ),
                                        onPressed: () {
                                          deleteTx(tasks[index].id.toString());
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                      TextButton(
                                        child: Text(
                                          'Nope',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 24,
                                              fontFamily: 'Salsa-Regular',
                                              fontWeight: FontWeight.w300),
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                      ),
                                    ],
                                  );
                                },
                              ),
                              child: GradientIcon(
                                Icons.remove_circle_rounded,
                                30.0,
                                LinearGradient(
                                  colors: <Color>[
                                    Colors.teal,
                                    Colors.cyan,
                                    Colors.greenAccent,
                                    Colors.greenAccent,
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              //itemCount is the parameter that shows the length of the List
              itemCount: tasks.length,
            ),
    );
  }
}
