import 'package:ai_diet_firebase/profilescreen.dart';
import 'package:ai_diet_firebase/test.dart';
import 'package:flutter/material.dart';

class ShowOptions extends StatefulWidget {
  const ShowOptions({Key? key}) : super(key: key);

  @override
  State<ShowOptions> createState() => _ShowOptionsState();
}

class _ShowOptionsState extends State<ShowOptions> {
  int _selectedIndex = 0;





  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Test(),
    Text(
      'Index 2: Schedule',
      style: optionStyle,
    ),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 35.0,
            ),
            label: 'Home',
            backgroundColor: Colors.orange,

          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.analytics_outlined,
              size: 35.0,
            ),
            label: 'Progress',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              size: 35.0,
            ),
            label: 'Schedule',
            backgroundColor: Colors.indigo,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 35.0,
            ),
            label: 'MyProfile',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
