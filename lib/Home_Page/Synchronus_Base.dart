//importing packages
import 'package:flutter/material.dart';
import 'package:synchronous/Home_Page/Opt4.dart';
import '../Home_Page/Opt1.dart';
import '../Home_Page/Opt3.dart';
import '../Home_Page/Opt2.dart';
import 'package:flutter/cupertino.dart';
import 'Opt3.dart';

class SynchronusBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //using materialApp
    return MaterialApp(
      title: 'Synchronus',
      //defining Theme

      debugShowCheckedModeBanner: false,
      theme: ThemeData(platform: TargetPlatform.iOS),
      //using scaffolf as home
      home: Scaffold(
          //implementing an appbar
          appBar: AppBar(
            title: Text(
              'Synchronus',
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
                child: Column(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(flex: 4, child: Opt1()),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(flex: 4, child: Opt2()),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(flex: 4, child: Opt3()),
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(flex: 4, child: Opt4()),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            ),
          ) //implementing settings drawer
          // drawer: Settings(),
          // implementing Tabs
          // bottomNavigationBar: Tabs(),
          ),
    );
  }
}
