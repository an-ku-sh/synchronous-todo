import 'package:flutter/material.dart';
import 'package:synchronous/Home_Page/Gradient.dart';

class SplashScreenSC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // element 1
        Padding(
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
                      Colors.yellow,
                      Colors.pink,
                      Colors.blue,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                title: Text(
                  'Add Events to your schedule',
                  style: TextStyle(
                      // decoration: (tasks[index].isDone == 'true')
                      //     ? TextDecoration.lineThrough
                      //     : null,
                      fontSize: 21,
                      fontFamily: 'Salsa-Regular',
                      fontWeight: FontWeight.w300),
                ),
                trailing: Wrap(
                  spacing: 12,
                  children: [
                    GradientIcon(
                      Icons.done_all,
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
                    GradientIcon(
                      Icons.remove_circle_rounded,
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
                  ],
                ),
              ),
            ),
          ),
        ),
        Padding(
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
                      Colors.yellow,
                      Colors.pink,
                      Colors.blue,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                title: Text(
                  'Set a date for the event in the "Add to Schedule" option',
                  style: TextStyle(
                      // decoration: (tasks[index].isDone == 'true')
                      //     ? TextDecoration.lineThrough
                      //     : null,
                      fontSize: 21,
                      fontFamily: 'Salsa-Regular',
                      fontWeight: FontWeight.w300),
                ),
                trailing: Wrap(
                  spacing: 12,
                  children: [
                    GradientIcon(
                      Icons.done_all,
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
                    GradientIcon(
                      Icons.remove_circle_rounded,
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
                  ],
                ),
              ),
            ),
          ),
        ),
        // element 2
        Padding(
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
                      Colors.yellow,
                      Colors.pink,
                      Colors.blue,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                title: Text(
                  'Tapping the Double Tick marks the Event as "Done"',
                  style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 21,
                      fontFamily: 'Salsa-Regular',
                      fontWeight: FontWeight.w300),
                ),
                trailing: Wrap(
                  spacing: 12,
                  children: [
                    GradientIcon(
                      Icons.done_all,
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
                    GradientIcon(
                      Icons.remove_circle_rounded,
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
                  ],
                ),
              ),
            ),
          ),
        ),
        // element 3
        Padding(
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
                      Colors.yellow,
                      Colors.pink,
                      Colors.blue,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                title: Text(
                  'Tapping on the delete button deletes the Event',
                  style: TextStyle(
                      fontSize: 21,
                      fontFamily: 'Salsa-Regular',
                      fontWeight: FontWeight.w300),
                ),
                trailing: Wrap(
                  spacing: 12,
                  children: [
                    GradientIcon(
                      Icons.done_all,
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
                    GradientIcon(
                      Icons.remove_circle_rounded,
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
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
