import 'package:flutter/material.dart';
import 'package:synchronous/Lists/Lists_Base.dart';
import '../Daily/Day/Daily_Base.dart';
import '../Home_Page/Synchronus_Base.dart';
import '../Schedules/Schedules_Base.dart';
import '../ToDo/ToDo_Base.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Widget> _pages = [
    SynchronusBase(),
    ToDo(),
    SW(),
    DayBase(),
    ListsBase(),
  ];

  int _selectPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectPageIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.teal[700],
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectPageIndex,
          onTap: _selectPage,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.done_all),
              label: 'ToDo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event_available_rounded),
              label: 'SWF',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_rounded),
              label: 'Daily Planner',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_list_bulleted),
              label: 'Lists',
            ),
          ]),
    );
  }
}
