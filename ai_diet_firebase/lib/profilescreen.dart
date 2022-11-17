import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ai_diet_firebase/net/flutterfire.dart';
import 'net/userinfo.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _selectedIndex = 0;





  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Progress',
      style: optionStyle,
    ),
    Text(
      'Index 2: Schedule',
      style: optionStyle,
    ),
    Text(
      'Index 3: MyProfile',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(5, 10, 5, 0.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: w * 0.8,
                  height: h * 0.22,
                  child: Image.asset('assets/logo1.png'),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                        color: Colors.green,
                        child: Text(
                          'User Information',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            letterSpacing: 2.0,
                            fontSize: 26.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    PopupMenuButton(
                        icon: Icon(Icons.settings),
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem<int>(
                              value: 1,
                              child: Text("Settings"),
                            ),
                            PopupMenuItem<int>(
                              value: 2,
                              child: Text("Logout"),
                            ),
                          ];
                        },
                        onSelected: (value) {
                          if (value == 0) {
                            print("Settings menu is selected.");
                          } else if (value == 1) {
                            print("Logout menu is selected.");
                          }
                        }),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.lightBlue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {
                        },
                        child: Text('NAME', style: TextStyle(fontSize: 29)),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 45.0,
                      width: w/1.5,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                        child: GetName(),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.lightBlue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {},
                        child: Text('AGE', style: TextStyle(fontSize: 29)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14.0,
                  // child: Text(
                  //   userName,
                  // ),
                ),
                Row(
                  children: [
                    Container(),
                  ],
                ),
                SizedBox(
                  height: 35.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.lightBlue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {},
                        child: Text('WEIGHT', style: TextStyle(fontSize: 29)),
                      ),
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:[
                      SizedBox(
                        height: 45.0,
                        width: w/3,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 0, 0),
                          child: GetW(),
                        ),
                      ),
                    ]
                ),
                Row(
                  children: [
                    Container(),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.lightBlue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {},
                        child: Text('HEIGHT', style: TextStyle(fontSize: 29)),
                      ),
                    ),
                  ],
                ),
                Row(
                    children:[
                      SizedBox(
                        height: 45.0,
                        width: w/3,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: GetH(),
                        ),
                      ),
                    ]
                ),
                Row(
                  children: [
                    Container(),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.lightBlue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {},
                        child: Text('BMI', style: TextStyle(fontSize: 29)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14.0,
                ),
                Row(
                  children: [
                    Container(),
                  ],
                ),
                SizedBox(
                  height: 35.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.lightBlue,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {},
                        child: Text('BMR', style: TextStyle(fontSize: 29)),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 14.0,
                ),
                Row(
                  children: [
                    Container(),
                  ],
                ),
                SizedBox(height: 35.0),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.red,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {},
                        child: Text('DISEASE LIST',
                            style: TextStyle(fontSize: 29)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.0),
              ],
            ),
          ],
        ),
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