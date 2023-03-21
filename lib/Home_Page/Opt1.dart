//importing packages
import 'package:flutter/material.dart';
import '../Home_Page/Gradient.dart';
import '../ToDo/ToDo_Base.dart';

// Defining Opt1()
// It has reference to ToDo() i.e. the To-Do List

class Opt1 extends StatelessWidget {
  List<Color> _colors = [Colors.teal[50], Colors.tealAccent[700]];
  List<double> _stops = [0.0, 0.8];
  @override
  Widget build(BuildContext context) {
    //InkWell adds the onTap() functionality to Opt1(),
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return ToDo();
        }));
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
        child: Container(
          //row that contains the icon and the column
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                //the icon
                child: GradientIcon(
                  Icons.done_all,
                  40.0,
                  LinearGradient(
                    colors: <Color>[
                      Colors.red,
                      Colors.orange,
                      Colors.pink,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                //the column containing button and card
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        //the raised button
                        child: Row(children: [
                          Expanded(
                              child: Card(
                                  child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        'To-Do List',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'KaushanScript-Regular',
                                            fontWeight: FontWeight.w600),
                                      )))),
                        ])),
                    Expanded(
                      flex: 3,
                      child: Row(
                          //the card
                          children: [
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    'Create a To-Do List',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Salsa-Regular',
                                        fontWeight: FontWeight.w300),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    // Spacer(
                    //   flex: 1,
                    // ),
                  ],
                ),
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black, width: 4),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(0.0),
                bottomRight: Radius.circular(15.0),
                bottomLeft: Radius.circular(0.0),
              ),
              gradient: LinearGradient(
                colors: _colors,
                stops: _stops,
              )),
        ),
      ),
    );
  }
}
