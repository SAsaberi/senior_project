import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'flutterfire.dart';

Future<DocumentSnapshot<Map<String, dynamic>>> futuredoc=GeteName();


Future<DocumentSnapshot<Map<String, dynamic>>> GeteName() async{
  final doc = await idUsers.get(); //doc
  return doc;
//   final data = doc.data() as Map<String, dynamic>;
//   //userName=(data["Name"]).toString()+"";
//   return data["Name"].toString();
}




Widget GetName(){
  return FutureBuilder<DocumentSnapshot>(
    future: futuredoc,
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        final doc = snapshot.data!;
        final data = doc.data() as Map?;
        final lll=data!["Name"] as String;
        //String nnn=lll;
        return Text(
          //nnn, or
          lll,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        );
      }

      return const CircularProgressIndicator();
    },
  );
}


Widget GetH(){
  return FutureBuilder<DocumentSnapshot>(
    future: futuredoc,
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        final doc = snapshot.data!;
        final data = doc.data() as Map?;


        return Text(
          data!["height"].toString()+"",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        );
      }

      return const CircularProgressIndicator();
    },
  );
}

Widget GetW(){
  return FutureBuilder<DocumentSnapshot>(
    future: futuredoc,
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        final doc = snapshot.data!;
        final data = doc.data() as Map?;

        return Text(
          data!["weight"].toString(),
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        );
      }

      return const CircularProgressIndicator();
    },
  );
}
int age=1;
Widget GetAge(){
  return FutureBuilder<DocumentSnapshot>(
    future: futuredoc,
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        final doc = snapshot.data!;
        final data = doc.data() as Map?;
        //final data1  =setage(data);
        setage(data);
        return Text(
          age.toString(),
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        );
      }

      return const CircularProgressIndicator();
    },
  );
}

Future setage(data)async{
  final DOB=data!["date of birth"] as String;
  age=agecalc(DOB);
  await idUsers.update({
    "age": age,
  });
  //print(age.toString()+"this in set age");
}


double BMI=0.0;
Widget GetBMI(){
  return FutureBuilder<DocumentSnapshot>(
    future: futuredoc,
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        final doc = snapshot.data!;
        final data = doc.data() as Map?;
        calcBMI(data);
        return Text(
          BMI.toStringAsPrecision(4),
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        );
      }

      return const CircularProgressIndicator();
    },
  );
}

Future calcBMI(data)async{

  final height=data!["height"] as double;
  final weight=data["weight"] as double;
  BMI=(weight/((height/100)*(height/100)));
  String temp= BMI.toStringAsPrecision(4);
  BMI=double.parse(temp);
  await idUsers.update({
    "BMI": BMI,
  });
}


double BMR=0.0;
Widget GetBMR(){
  return FutureBuilder<DocumentSnapshot>(
    future: futuredoc,
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        final doc = snapshot.data!;
        final data = doc.data() as Map?;
        calcBMR(data);
        return Text(
          BMR.toStringAsPrecision(4),
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        );
      }

      return const CircularProgressIndicator();
    },
  );
}

Future calcBMR(data)async{

  final height=data!["height"] as double;
  final weight=data["weight"] as double;
  final gender=data["Gender"] as String;
  if(gender=="male")
  {
    BMR=(10*weight)+(6.25*height)-(5*age)+5;
  }
  else{
    BMR=(10*weight)+(6.25*height)-(5*age)-161;
  }
  String temp= BMR.toStringAsPrecision(4);
  BMR=double.parse(temp);
  await idUsers.update({
    "BMR": BMR,
  });
}