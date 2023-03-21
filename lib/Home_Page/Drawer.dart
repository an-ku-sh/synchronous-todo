//importing packages
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //using Edxpanded to fill up entire Space
    return Expanded(
      //using SafeArea coz overlapping issues
      child: SafeArea(
        //using Drawer coz its a damn drawer
        child: Drawer(
          //using container to containe the background image and other widgets
          // child: Container(
          //   //implementing a background image
          //   constraints: BoxConstraints.expand(),
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //     image: new AssetImage("assets/images/bg08.jpg"),
          //     fit: BoxFit.cover,
          //   )),
          // Implementing Rest of the elements om top of background image
          child: Column(children: [
            //heading for the Drawer
            Center(
                child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('Settings Menu'))),
            // using CircleAvatar to show company logo
            // Padding(
            //   padding: EdgeInsets.all(40),
            //   child: CircleAvatar(
            //     radius: 85,
            //     backgroundColor: Color(0xffFDCF09),
            //     child: CircleAvatar(
            //       radius: 80,
            //       backgroundImage: AssetImage('assets/images/bg02.jpg'),
            //     ),
            //   ),
            // ),
            //implementing options as rows
            Row(children: [
              Expanded(
                child: RaisedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.account_box),
                  label: Text('Manage Your Account'),
                ),
              ),
            ]),
            Row(children: [
              Expanded(
                child: RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.attach_money),
                    label: Text('Upgrade To Premium')),
              ),
            ]),
            Row(children: [
              Expanded(
                child: RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.bug_report),
                    label: Text('Report A Bug')),
              ),
            ]),
            Row(children: [
              Expanded(
                child: RaisedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.stars),
                    label: Text('Give Us A Rating')),
              ),
            ]),
            Divider(),
            Row(children: [
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Text('Synchronus Ver 0.2.1'),
              ))
            ]),
            Divider(),
            Row(children: [
              Expanded(
                  child: Container(
                alignment: Alignment.center,
                child: Text("\u00a9 DimensityApps"),
              ))
            ]),
          ]),
        ),
      ),
    );
  }
}
