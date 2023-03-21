import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:synchronous/Home_Page/Gradient.dart';
import './splash_screen.dart';

import '../models/Schedule.dart';

class ScheduleList extends StatelessWidget {
  final List<Schedule> schedules;
  final Function deleteTx;
  final Function markDone;

  ScheduleList(this.schedules, this.deleteTx, this.markDone);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      child: schedules.isEmpty
          ? SplashScreenSC()
          : ListView.builder(
              itemBuilder: (ctx, index) {
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
                      child: Column(
                        children: [
                          ListTile(
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
                              'Wish ${schedules[index].title} on  ${DateFormat.MMMd().format(DateTime.parse(schedules[index].date))}',
                              style: TextStyle(
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
                                          'You just tapped the "Delete" button',
                                          style: TextStyle(
                                              fontSize: 28,
                                              fontFamily:
                                                  'KaushanScript-Regular',
                                              fontWeight: FontWeight.w300),
                                        ),
                                        content: SingleChildScrollView(
                                          child: ListBody(
                                            children: <Widget>[
                                              Text(
                                                'Remove Birthday?',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 18,
                                                    fontFamily: 'Salsa-Regular',
                                                    fontWeight:
                                                        FontWeight.w300),
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
                                              deleteTx(schedules[index]
                                                  .id
                                                  .toString());
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
                                        Colors.yellow,
                                        Colors.pink,
                                        Colors.blue,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: schedules.length,
            ),
    );
  }
}
