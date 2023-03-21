import 'package:flutter/material.dart';
import 'package:synchronous/Home_Page/Gradient.dart';
import 'package:synchronous/Lists/Birthdays/Birthdays_Base.dart';
import 'package:synchronous/Lists/Bucket/Bucket_Base.dart';
import 'package:synchronous/Lists/Groceries/Groceries_Base.dart';
import 'package:synchronous/Lists/LifeGoals/LifeGoals_Base.dart';
import 'package:synchronous/Lists/NewYear/NewYear_Base.dart';
import 'package:synchronous/Lists/Notes/Notes_Base.dart';
import 'package:synchronous/Lists/Wish/Wish_Base.dart';

class ListsBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Synchronus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(platform: TargetPlatform.iOS),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Lists',
            style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontFamily: 'KaushanScript-Regular',
                fontWeight: FontWeight.w600),
          ),
          backgroundColor: Colors.teal[700],
        ),
        body: SafeArea(
          child: Center(
            //setting background image
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: (AssetImage("assets/images/IA1.jpg")),
                fit: BoxFit.cover,
              )),
              //Using all the RaisedButtonIcons for Home
              child: ListView(
                children: [
                  // Row Element
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      children: [
                        // Each card element
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Groceries();
                            }));
                          },
                          child: Card(
                            child: Column(children: [
                              Card(
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Groceries',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'KaushanScript-Regular',
                                            fontWeight: FontWeight.w600),
                                      ))),
                              Padding(
                                padding: EdgeInsets.only(left: 30, right: 30),
                                child: GradientIcon(
                                  Icons.local_grocery_store_rounded,
                                  90.0,
                                  LinearGradient(
                                    colors: <Color>[
                                      Colors.blue,
                                      Colors.orange,
                                      Colors.green,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        Spacer(),
                        //
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Bucket();
                            }));
                          },
                          child: Card(
                            child: Column(children: [
                              Card(
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Bucket List',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'KaushanScript-Regular',
                                            fontWeight: FontWeight.w600),
                                      ))),
                              Padding(
                                padding: EdgeInsets.only(left: 30, right: 30),
                                child: GradientIcon(
                                  Icons.list_alt,
                                  90.0,
                                  LinearGradient(
                                    colors: <Color>[
                                      Colors.green,
                                      Colors.blue,
                                      Colors.pink,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Row Element
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Row(
                      children: [
                        // Each card element
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Birthdays();
                            }));
                          },
                          child: Card(
                            child: Column(children: [
                              Card(
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'Birthdays',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'KaushanScript-Regular',
                                            fontWeight: FontWeight.w600),
                                      ))),
                              Padding(
                                padding: EdgeInsets.only(left: 30, right: 30),
                                child: GradientIcon(
                                  Icons.cake_sharp,
                                  90.0,
                                  LinearGradient(
                                    colors: <Color>[
                                      Colors.white,
                                      Colors.pink,
                                      Colors.red,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        Spacer(),
                        //
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return Wish();
                            }));
                          },
                          child: Card(
                            child: Column(children: [
                              Card(
                                  child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Text(
                                        'WishList',
                                        style: TextStyle(
                                            fontSize: 24,
                                            fontFamily: 'KaushanScript-Regular',
                                            fontWeight: FontWeight.w600),
                                      ))),
                              Padding(
                                padding: EdgeInsets.only(left: 30, right: 30),
                                child: GradientIcon(
                                  Icons.list,
                                  90.0,
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
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return NewYear();
                          }));
                        },
                        child: Row(
                          children: [
                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: GradientIcon(
                                  Icons.ac_unit_sharp,
                                  90.0,
                                  LinearGradient(
                                    colors: <Color>[
                                      Colors.green,
                                      Colors.teal,
                                      Colors.blue,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Card(
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'New Year \n Resolutions',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'KaushanScript-Regular',
                                          fontWeight: FontWeight.w600),
                                    ))),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LifeGoals();
                          }));
                        },
                        child: Row(
                          children: [
                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: GradientIcon(
                                  Icons.flag_sharp,
                                  90.0,
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
                            ),
                            Spacer(),
                            Card(
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'Life Goals',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'KaushanScript-Regular',
                                          fontWeight: FontWeight.w600),
                                    ))),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Card(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Notes();
                          }));
                        },
                        child: Row(
                          children: [
                            Card(
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: GradientIcon(
                                  Icons.book,
                                  90.0,
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
                              ),
                            ),
                            Spacer(),
                            Card(
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: Text(
                                      'Notes',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'KaushanScript-Regular',
                                          fontWeight: FontWeight.w600),
                                    ))),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
