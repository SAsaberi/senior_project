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

        return Text(
          data!["Name"]+"",
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
          data!["height"].toString(),
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