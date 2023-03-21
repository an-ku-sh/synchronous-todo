//importing core packages
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'Hours/01/widgets/Child_Base.dart';
import 'Hours/02/widgets/Child_Base.dart';
import 'Hours/03/widgets/Child_Base.dart';
import 'Hours/04/widgets/Child_Base.dart';
import 'Hours/05/widgets/Child_Base.dart';
import 'Hours/06/widgets/Child_Base.dart';
import 'Hours/07/widgets/Child_Base.dart';
import 'Hours/08/widgets/Child_Base.dart';
import 'Hours/09/widgets/Child_Base.dart';
import 'Hours/10/widgets/Child_Base.dart';
import 'Hours/11/widgets/Child_Base.dart';
import 'Hours/12/widgets/Child_Base.dart';
import 'Hours/13/widgets/Child_Base.dart';
import 'Hours/14/widgets/Child_Base.dart';
import 'Hours/15/widgets/Child_Base.dart';
import 'Hours/16/widgets/Child_Base.dart';
import 'Hours/17/widgets/Child_Base.dart';
import 'Hours/18/widgets/Child_Base.dart';
import 'Hours/19/widgets/Child_Base.dart';
import 'Hours/20/widgets/Child_Base.dart';
import 'Hours/21/widgets/Child_Base.dart';
import 'Hours/22/widgets/Child_Base.dart';
import 'Hours/23/widgets/Child_Base.dart';
import 'Hours/24/widgets/Child_Base.dart';

//importing other elements into the base file

class DayBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(platform: TargetPlatform.iOS),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              ' ${DateFormat.EEEE().format(DateTime.now())}',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontFamily: 'KaushanScript-Regular',
                  fontWeight: FontWeight.w600),
            ),
            backgroundColor: Colors.teal[700],
          ),
          body: Stack(children: [
            Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: new AssetImage("assets/images/IA18.jpg"),
                fit: BoxFit.cover,
              )),
            ),
            ListView(
              children: [
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('12:00 AM - 01:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH1(),
                      ),
                    ),
                  ),
                ]),
                // 2
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('01:00 AM - 02:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH2(),
                      ),
                    ),
                  ),
                ]),
                // 3
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('02:00 AM - 03:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH3(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('03:00 AM - 04:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH4(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('04:00 AM - 05:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH5(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('05:00 AM - 06:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH6(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('06:00 AM - 07:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH7(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('07:00 AM - 08:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH8(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('08:00 AM - 09:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH9(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('09:00 AM - 10:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH10(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('10:00 AM - 11:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH11(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('11:00 AM - 12:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH12(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('12:00 PM - 01:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH13(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('01:00 PM - 02:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH14(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('02:00 PM - 03:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH15(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('03:00 PM - 04:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH16(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('04:00 PM - 05:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH17(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('05:00 PM - 06:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH18(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('06:00 PM - 07:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH19(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('07:00 PM - 08:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH20(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('08:00 PM - 09:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH21(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('09:00 PM - 10:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH22(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('10:00 PM - 11:00 PM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH23(),
                      ),
                    ),
                  ),
                ]),
                Divider(),
                Column(children: [
                  Container(
                    child: Card(
                      child: Padding(
                          padding: EdgeInsets.all(4),
                          child: Text('11:00 PM - 12:00 AM ')),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black, width: 4),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(0.0),
                          bottomLeft: Radius.circular(0.0),
                        ),
                      ),
                      child: Card(
                        child: MH24(),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ]),
        ));
  }
}
