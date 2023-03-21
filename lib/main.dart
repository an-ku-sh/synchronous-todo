//importing packages
import 'package:flutter/material.dart';

import './Home_Page/Synchronus_Base.dart';
import './Home_Page/TabScreens.dart';

import './Schedules/Schedules_Base.dart';

import './ToDo/ToDo_Base.dart';
//import 'package:synchronus_base01/To-Do+/To-Do_Base.dart';

//the main() function calling the Root widget
void main() => runApp(MyApp());

//Defining the MyApp() here in order to prevent re-writing the themeData

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(platform: TargetPlatform.iOS),
      //this is where other widgets are called
      home: Container(
        child: DefaultTabController(
          length: 7,
          child: TabsScreen(),
        ),
      ),
    );
  }
}
