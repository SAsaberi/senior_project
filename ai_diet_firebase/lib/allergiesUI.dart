import 'package:ai_diet_firebase/allergies.dart';
import 'package:ai_diet_firebase/showoptions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AllergiesUI extends StatefulWidget {
  const AllergiesUI({super.key});

  @override
  State<AllergiesUI> createState() => _AllergiesUIState();
}

class _AllergiesUIState extends State<AllergiesUI> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            width: w,
            height: h * 0.28,
            child: Image.asset('assets/logo.png'),
          ),
          Container(
            child: Text(
              'DO YOU HAVE ANY ALLERGIES?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
              onPressed: () async {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Allergies(),
                    ),
                  );
                }
              },
              child: Text('YES', style: TextStyle(fontSize: 20)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                  primary: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  )),
              onPressed: () async {
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShowOptions(),
                    ),
                  );
                }
              },
              child: Text('NO', style: TextStyle(fontSize: 20)),
            ),
          ),
        ],
      ),
    );
  }
}
