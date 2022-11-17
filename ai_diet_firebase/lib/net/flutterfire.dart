import 'package:ai_diet_firebase/net/userinfo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final user= FirebaseAuth.instance.currentUser!;
String currentuser= user.email!.toString() ;
final idUsers= FirebaseFirestore.instance.collection("users").doc(currentuser);





Future<bool> SignUp(String email, String password, String name, String phonenumber) async {
  try{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password:password);
    //add user details
    addUserDetails(
      name,
      int.parse(phonenumber),
      email,

    );
    return true;

  } on FirebaseAuthException catch (e) {
    if(e.code == 'weak-password') {
      print('The password provided is too weak.');
    }else if (e.code == 'email-already-in-use'){
      print('The account already exists for that email.');
    }
    return false;
  }catch (e){
    print(e.toString());
    return false;
  }
}

Future addUserDetails(String name, int phonenumber,String email) async{
  await idUsers.set({
    "email": email,
    "Name": name ,
    "phone number": phonenumber,
  });



}





Future <bool> addUserInfo(String dateOfBirth, String weight, String height) async{
  await idUsers.update({
    "date of birth": dateOfBirth,
    "weight": double.parse(weight) ,
    "height": double.parse(height),
  });
  return true;
}





Future <bool> addTarWe(double weight) async{
  await idUsers.update({
    "Target Weight": weight
  });
  return true;
}


Future <bool> addactivity(String activitylevel) async{
  await idUsers.update({
    "Activity Level": activitylevel
  });
  return true;
}




