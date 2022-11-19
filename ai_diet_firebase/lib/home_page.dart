import 'package:ai_diet_firebase/step_tracker.dart';
import 'package:ai_diet_firebase/test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ai_diet_firebase/net/flutterfire.dart';
import 'net/userinfo.dart';
import 'package:pedometer/pedometer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  width: w * 0.7,
                  height: h * 0.2,
                  child: Image.asset('assets/logo1.png'),
                ),
                Divider(),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.green,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {},
                        child: Text('Todays Progress',
                            style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.green,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 0,

                  color: Colors.white,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text("CALORIES CONSUMED",
                                  style: TextStyle(fontSize: 18)),
                              Container(),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Text("WATER CONSUMED",
                                  style: TextStyle(fontSize: 18)),
                              Container(),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          //SizedBox
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.orangeAccent,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {},
                        child:
                            Text('Next Meal', style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.orangeAccent,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 0,

                  color: Colors.white,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Container(),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          //SizedBox
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ), //Card
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            primary: Colors.purpleAccent,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {},
                        child: Text('Step Tracker',
                            style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ],
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.purpleAccent,
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 0,

                  color: Colors.white,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              Container(),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          //SizedBox
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ), //Card
              ],
            ),
          ],
        ),
      ),
    );
  }
}
