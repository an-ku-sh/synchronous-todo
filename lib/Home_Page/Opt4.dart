//importing packages
import 'package:flutter/material.dart';
import 'package:synchronous/Lists/Lists_Base.dart';
import 'Gradient.dart';

class Opt4 extends StatelessWidget {
  List<Color> _colors = [Colors.teal[50], Colors.tealAccent[700]];
  List<double> _stops = [0.0, 0.8];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
      child: Container(
        //row that contains the icon and the column
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListsBase();
            }));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                //the icon
                child: GradientIcon(
                  Icons.format_list_bulleted,
                  40.0,
                  LinearGradient(
                    colors: <Color>[
                      Colors.cyan,
                      Colors.green,
                      Colors.blue,
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
                    // Spacer(
                    //   flex: 1,
                    // ),
                    Expanded(
                        flex: 3,
                        //the raised button
                        child: Row(children: [
                          Expanded(
                              child: Card(
                                  child: Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        'Lists',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontFamily: 'KaushanScript-Regular',
                                            fontWeight: FontWeight.w600),
                                      )))),
                        ])),
                    Expanded(
                      flex: 4,
                      child: Row(
                          //the card
                          children: [
                            Expanded(
                              child: Card(
                                child: Padding(
                                  padding: EdgeInsets.all(4),
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: Text(
                                      'Organize everything with Lists',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Salsa-Regular',
                                          fontWeight: FontWeight.w300),
                                    ),
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
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 4),
            color: Colors.grey[200],
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
    );
  }
}
