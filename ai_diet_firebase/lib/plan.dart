import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:ai_diet_firebase/step_tracker.dart';
import 'package:ai_diet_firebase/test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ai_diet_firebase/net/flutterfire.dart';
import 'net/userinfo.dart';
import 'package:pedometer/pedometer.dart';

class DietPlan extends StatefulWidget {
  const DietPlan({super.key});

  @override
  State<DietPlan> createState() => _DietPlanState();
}

class _DietPlanState extends State<DietPlan> {
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
                Divider(
                  height: 6,
                ),
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
                            primary: Colors.purpleAccent,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            )),
                        onPressed: () {},
                        child: Text('Sunday', style: TextStyle(fontSize: 20)),
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
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Breakfast:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Lunch:',
                                      style: TextStyle(fontSize: 20)),
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
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Dinner:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
                            ],
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
                ),
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
                        child: Text('Monday', style: TextStyle(fontSize: 20)),
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
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Breakfast:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Lunch:',
                                      style: TextStyle(fontSize: 20)),
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
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Dinner:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
                            ],
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
                ), //Card //Card
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
                        child: Text('Tuesday', style: TextStyle(fontSize: 20)),
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
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Breakfast:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Lunch:',
                                      style: TextStyle(fontSize: 20)),
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
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Dinner:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
                            ],
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
                        child:
                            Text('Wednesday', style: TextStyle(fontSize: 20)),
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
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Breakfast:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Lunch:',
                                      style: TextStyle(fontSize: 20)),
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
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Dinner:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
                            ],
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
                        child: Text('Thursday', style: TextStyle(fontSize: 20)),
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
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Breakfast:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Lunch:',
                                      style: TextStyle(fontSize: 20)),
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
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Dinner:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
                            ],
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
                        child: Text('Friday', style: TextStyle(fontSize: 20)),
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
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Breakfast:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Lunch:',
                                      style: TextStyle(fontSize: 20)),
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
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Dinner:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
                            ],
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
                        child: Text('Saturday', style: TextStyle(fontSize: 20)),
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
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Breakfast:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
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
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Lunch:',
                                      style: TextStyle(fontSize: 20)),
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
                            height: 8,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                                  child: Text('Dinner:',
                                      style: TextStyle(fontSize: 20)),
                                ),
                              ),
                            ],
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
            )
          ],
        ),
      ),
    );
  }
}
