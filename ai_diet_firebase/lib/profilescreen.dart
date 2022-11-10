import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body:Padding(
        padding: EdgeInsets.fromLTRB(5, 10, 5, 0.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget> [
              Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset('assets/logo.png',scale: 7,),
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40.0,
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 40, 5),
                      color: Colors.lightBlue,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 40, 5),
                      color: Colors.green,
                      child: Text(
                        'MyProfile',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          fontSize: 26.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 40, 5),
                      color: Colors.lightBlue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 40, 5),
                      color: Colors.lightBlue,
                      child: Text(
                        'NAME',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          fontSize: 26.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Text(
                    'FirstName LastName',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 16.0,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Click asdfghjhgf ",
                        ),
                        WidgetSpan(
                          child: Icon(Icons.edit, size: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.lightBlue,
                      child: Text(
                        'AGE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          fontSize: 26.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Text(
                    '22',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 16.0,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Click asdfghjhgf ",
                        ),
                        WidgetSpan(
                          child: Icon(Icons.edit, size: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 40, 5),
                      color: Colors.lightBlue,
                      child: Text(
                        'WEIGHT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          fontSize: 26.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Text(
                    '95 kg',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 16.0,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Click asdfghjhgf ",
                        ),
                        WidgetSpan(
                          child: Icon(Icons.edit, size: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 40, 5),
                      color: Colors.lightBlue,
                      child: Text(
                        'HEIGHT',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          fontSize: 26.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Text(
                    '175 cm',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 16.0,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Click asdfghjhgf ",
                        ),
                        WidgetSpan(
                          child: Icon(Icons.edit, size: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 40, 5),
                      color: Colors.lightBlue,
                      child: Text(
                        'BMI',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          fontSize: 26.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Text(
                    '....',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 16.0,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Click asdfghjhgf ",
                        ),
                        WidgetSpan(
                          child: Icon(Icons.edit, size: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 40, 5),
                      color: Colors.lightBlue,
                      child: Text(
                        'BMR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          fontSize: 26.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14.0,
              ),
              Row(
                children: [
                  Text(
                    '.....',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 16.0,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Click asdfghjhgf ",
                        ),
                        WidgetSpan(
                          child: Icon(Icons.edit, size: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 35.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 5, 40, 5),
                      color: Colors.red,
                      child: Text(
                        'DISEASE LIST',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 2.0,
                          fontSize: 26.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.0),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 150, 0),
                    color: Colors.red,
                    child: Text(
                      '1',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 26.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Click asdfghjhgf ",
                        ),
                        WidgetSpan(
                          child: Icon(Icons.edit, size: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7.0),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 0, 150, 0),
                    color: Colors.red,
                    child: Text(
                      '2',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize: 26.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Click asdfghjhgf ",
                        ),
                        WidgetSpan(
                          child: Icon(Icons.edit, size: 14),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_rounded),
            label: 'Diet Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.analytics_rounded),
            label: 'Analytics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}