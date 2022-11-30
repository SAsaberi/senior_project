import 'dart:math';

import 'package:ai_diet_firebase/net/flutterfire.dart';
import 'package:ai_diet_firebase/net/userinfo.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final dietsn= FirebaseFirestore.instance.collection("generating diet").doc("normal diet");
Future<DocumentSnapshot<Map<String, dynamic>>> futuredoc1=getaa();

Future<DocumentSnapshot<Map<String, dynamic>>> getaa() async{
  final doc = await dietsn.get();
  return doc;
}

int daynumber=1;
Future GeneratingDiet() async {
  final doc = await dietsn.get();
  final data = doc.data() as Map<String, dynamic>;
  final doc1 = await idUsers.get();
  final data1 = doc1.data() as Map<String, dynamic>;


  //calculate dates
  var date = data1["Date"];
  date = date.split('/');
  final date1 = DateTime(
      int.parse(date[2]), int.parse(date[0]), int.parse(date[1]));
  final todays_date = DateTime.now();
  int difference = todays_date
      .difference(date1).inDays;
  if (difference < 7 && data1["Diet Set"] == true) {
    daynumber = difference;
  }
  else {
    Random random = new Random();
    int calories=data1["calories"];
    String diettype = data1["Diet Type"];
    bool isReached = false;
    int randomnumber = 0;
    int randomnumber2 = 0;
    int randomnumber3 = 0;
    int range2=calories+100;
    int range1=calories-100;

    for (int i = 0; i < 7; i++) {
      while (!isReached) {
        randomnumber = random.nextInt(17);
        randomnumber2 = random.nextInt(34);
        randomnumber3 = random.nextInt(34);


        if (diettype == "Normal Diet") {
          if(data1["allergy1"]==null&&data1["allergy2"]==null)
          {
            if (data["breakfast"][randomnumber.toString()]["kcal"] +
                data["Lunch"][randomnumber2.toString()]["kcal"] +
                data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                data["breakfast"][randomnumber.toString()]["kcal"] +
                    data["Lunch"][randomnumber2.toString()]["kcal"] +
                    data["dinner"][randomnumber3.toString()]["kcal"]<=range2) {
              print("$randomnumber");
              print(randomnumber2);
              print(randomnumber3);
              isReached = true;
            }
            else {
              print("still working");
            }
          }
          else if(data1["allergy1"]=="nuts product"&&data1["allergy2"]=="dairy product")
          {
            if(data["breakfast"][randomnumber.toString()]["allergy"]=="nuts product"||
                data["breakfast"][randomnumber.toString()]["allergy"]=="dairy product"||
                data["Lunch"][randomnumber2.toString()]["allergy"]=="nuts product"||
                data["Lunch"][randomnumber2.toString()]["allergy"]=="dairy product"||
                data["dinner"][randomnumber3.toString()]["allergy"]=="nuts product"||
                data["dinner"][randomnumber3.toString()]["allergy"]=="dairy product"
            )
            {

            }
            else if (data["breakfast"][randomnumber.toString()]["kcal"] +
                data["Lunch"][randomnumber2.toString()]["kcal"] +
                data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                data["breakfast"][randomnumber.toString()]["kcal"] +
                    data["Lunch"][randomnumber2.toString()]["kcal"] +
                    data["dinner"][randomnumber3.toString()]["kcal"]<=range2)
            {
              print(randomnumber);
              print(randomnumber2);
              print(randomnumber3);
              isReached = true;
            }

          }
          else if(data1["allergy1"]=="nuts product")
          {
            if(data["breakfast"][randomnumber.toString()]["allergy"]=="nuts product"||
                data["Lunch"][randomnumber2.toString()]["allergy"]=="nuts product"||
                data["dinner"][randomnumber3.toString()]["allergy"]=="nuts product"
            )
            {

            }
            else if (data["breakfast"][randomnumber.toString()]["kcal"] +
                data["Lunch"][randomnumber2.toString()]["kcal"] +
                data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                data["breakfast"][randomnumber.toString()]["kcal"] +
                    data["Lunch"][randomnumber2.toString()]["kcal"] +
                    data["dinner"][randomnumber3.toString()]["kcal"]<=range2)
            {
              print(randomnumber);
              print(randomnumber2);
              print(randomnumber3);
              isReached = true;
            }
          }
          else if(data1["allergy2"]=="dairy product")
          {
            if(data["breakfast"][randomnumber.toString()]["allergy"]=="dairy product"||
                data["Lunch"][randomnumber2.toString()]["allergy"]=="dairy product"||
                data["dinner"][randomnumber3.toString()]["allergy"]=="dairy product"
            )
            {

            }
            else if (data["breakfast"][randomnumber.toString()]["kcal"] +
                data["Lunch"][randomnumber2.toString()]["kcal"] +
                data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                data["breakfast"][randomnumber.toString()]["kcal"] +
                    data["Lunch"][randomnumber2.toString()]["kcal"] +
                    data["dinner"][randomnumber3.toString()]["kcal"]<=range2)
            {
              print(randomnumber);
              print(randomnumber2);
              print(randomnumber3);
              isReached = true;
            }

          }

        }


        // else if (diettype == "Keto Diet") {
        //   if(data1["allergy1"]==null&&data1["allergy2"]==null)
        //     {
        //       if (data["breakfast"][randomnumber.toString()]["diet"] == diettype &&
        //           data["Lunch"][randomnumber2.toString()]["diet"] == diettype &&
        //           data["dinner"][randomnumber3.toString()]["diet"] == diettype) {
        //         if (data["breakfast"][randomnumber.toString()]["kcal"] +
        //             data["Lunch"][randomnumber2.toString()]["kcal"] +
        //             data["dinner"][randomnumber3.toString()]["kcal"] > 0/*calories*/) {
        //           print(randomnumber);
        //           print(data["breakfast"][randomnumber.toString()]["name"]);
        //           print("");
        //           print(randomnumber2);
        //           print(data["Lunch"][randomnumber2.toString()]["name"]);
        //           print("");
        //           print(randomnumber3);
        //           print(data["dinner"][randomnumber3.toString()]["name"]);
        //           print("");
        //           print(diettype);
        //           isReached = true;
        //         }
        //         else {
        //           print("still working");
        //         }
        //       }
        //     }
        // }
        else if(diettype == "Keto Diet")
        {
          if (data["breakfast"][randomnumber.toString()]["diet"] == diettype &&
              data["Lunch"][randomnumber2.toString()]["diet"] == diettype &&
              data["dinner"][randomnumber3.toString()]["diet"] == diettype)
          {
            if(data1["allergy1"]=="nuts product"&&data1["allergy2"]=="dairy product")
            {
              if(data["breakfast"][randomnumber.toString()]["allergy"]!="nuts product"&&
                  data["breakfast"][randomnumber.toString()]["allergy"]!="dairy product"&&
                  data["Lunch"][randomnumber2.toString()]["allergy"]!="nuts product"&&
                  data["Lunch"][randomnumber2.toString()]["allergy"]!="dairy product"&&
                  data["dinner"][randomnumber3.toString()]["allergy"]!="nuts product"&&
                  data["dinner"][randomnumber3.toString()]["allergy"]!="dairy product"
              )
              {
                if (data["breakfast"][randomnumber.toString()]["kcal"] +
                    data["Lunch"][randomnumber2.toString()]["kcal"] +
                    data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                    data["breakfast"][randomnumber.toString()]["kcal"] +
                        data["Lunch"][randomnumber2.toString()]["kcal"] +
                        data["dinner"][randomnumber3.toString()]["kcal"]<=range2)
                {
                  print(randomnumber);
                  print(randomnumber2);
                  print(randomnumber3);
                  isReached = true;
                }
                else
                {
                  print("still working");
                }
              }
            }

            else if(data1["allergy1"]=="nuts product") {
              if (data["breakfast"][randomnumber.toString()]["allergy"] != "nuts product" &&
                  data["Lunch"][randomnumber2.toString()]["allergy"] != "nuts product" &&
                  data["dinner"][randomnumber3.toString()]["allergy"] != "nuts product"
              )
              {
                if (data["breakfast"][randomnumber.toString()]["kcal"] +
                    data["Lunch"][randomnumber2.toString()]["kcal"] +
                    data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                    data["breakfast"][randomnumber.toString()]["kcal"] +
                        data["Lunch"][randomnumber2.toString()]["kcal"] +
                        data["dinner"][randomnumber3.toString()]["kcal"]<=range2)
                {
                  print(randomnumber);
                  print(randomnumber2);
                  print(randomnumber3);
                  isReached = true;
                }
                else
                {
                  print("still working");
                }
              }
            }
            else if(data1["allergy2"]=="dairy product") {
              if (data["breakfast"][randomnumber.toString()]["allergy"] != "dairy product" &&
                  data["Lunch"][randomnumber2.toString()]["allergy"] != "dairy product" &&
                  data["dinner"][randomnumber3.toString()]["allergy"] != "dairy product"
              )
              {
                if (data["breakfast"][randomnumber.toString()]["kcal"] +
                    data["Lunch"][randomnumber2.toString()]["kcal"] +
                    data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                    data["breakfast"][randomnumber.toString()]["kcal"] +
                        data["Lunch"][randomnumber2.toString()]["kcal"] +
                        data["dinner"][randomnumber3.toString()]["kcal"]<=range2) {
                  print(randomnumber);
                  print(randomnumber2);
                  print(randomnumber3);
                  isReached = true;
                }
                else
                {
                  print("still working");
                }
              }
            }
            else
            {
              if (data["breakfast"][randomnumber.toString()]["kcal"] +
                  data["Lunch"][randomnumber2.toString()]["kcal"] +
                  data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                  data["breakfast"][randomnumber.toString()]["kcal"] +
                      data["Lunch"][randomnumber2.toString()]["kcal"] +
                      data["dinner"][randomnumber3.toString()]["kcal"]<=range2) {
                print(randomnumber);
                print(randomnumber2);
                print(randomnumber3);
                isReached = true;
                isReached = true;
              }
              else {
                print("still working");
              }
            }
          }

        }


        // else if (diettype == "Vegan Diet") {
        //   if(data1["allergy1"]==null&&data1["allergy2"]==null)
        //     {
        //       if (data["breakfast"][randomnumber.toString()]["diet"] == diettype &&
        //           data["Lunch"][randomnumber2.toString()]["diet"] == diettype &&
        //           data["dinner"][randomnumber3.toString()]["diet"] == diettype) {
        //         if (data["breakfast"][randomnumber.toString()]["kcal"] +
        //             data["Lunch"][randomnumber2.toString()]["kcal"] +
        //             data["dinner"][randomnumber3.toString()]["kcal"] > 0/*calories*/) {
        //           print(randomnumber);
        //           print(data["breakfast"][randomnumber.toString()]["name"]);
        //           print("");
        //           print(randomnumber2);
        //           print(data["Lunch"][randomnumber2.toString()]["name"]);
        //           print("");
        //           print(randomnumber3);
        //           print(data["dinner"][randomnumber3.toString()]["name"]);
        //           print("");
        //           print(diettype);
        //           isReached = true;
        //         }
        //         else {
        //           print("still working");
        //         }
        //       }
        //     }
        //
        // }
        else if(diettype == "Vegan Diet")
        {
          if (data["breakfast"][randomnumber.toString()]["diet"] == diettype &&
              data["Lunch"][randomnumber2.toString()]["diet"] == diettype &&
              data["dinner"][randomnumber3.toString()]["diet"] == diettype)
          {
            if(data1["allergy1"]=="nuts product"&&data1["allergy2"]=="dairy product")
            {
              if(data["breakfast"][randomnumber.toString()]["allergy"]!="nuts product"&&
                  data["breakfast"][randomnumber.toString()]["allergy"]!="dairy product"&&
                  data["Lunch"][randomnumber2.toString()]["allergy"]!="nuts product"&&
                  data["Lunch"][randomnumber2.toString()]["allergy"]!="dairy product"&&
                  data["dinner"][randomnumber3.toString()]["allergy"]!="nuts product"&&
                  data["dinner"][randomnumber3.toString()]["allergy"]!="dairy product"
              )
              {
                if (data["breakfast"][randomnumber.toString()]["kcal"] +
                    data["Lunch"][randomnumber2.toString()]["kcal"] +
                    data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                    data["breakfast"][randomnumber.toString()]["kcal"] +
                        data["Lunch"][randomnumber2.toString()]["kcal"] +
                        data["dinner"][randomnumber3.toString()]["kcal"]<=range2)
                {
                  print(randomnumber);
                  print(randomnumber2);
                  print(randomnumber3);
                  isReached = true;
                }
                else
                {
                  print("still working");
                }
              }
            }

            else if(data1["allergy1"]=="nuts product") {
              if (data["breakfast"][randomnumber.toString()]["allergy"] != "nuts product" &&
                  data["Lunch"][randomnumber2.toString()]["allergy"] != "nuts product" &&
                  data["dinner"][randomnumber3.toString()]["allergy"] != "nuts product"
              )
              {
                if (data["breakfast"][randomnumber.toString()]["kcal"] +
                    data["Lunch"][randomnumber2.toString()]["kcal"] +
                    data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                    data["breakfast"][randomnumber.toString()]["kcal"] +
                        data["Lunch"][randomnumber2.toString()]["kcal"] +
                        data["dinner"][randomnumber3.toString()]["kcal"]<=range2)
                {
                  print(randomnumber);
                  print(randomnumber2);
                  print(randomnumber3);
                  isReached = true;
                }
                else
                {
                  print("still working");
                }
              }
            }
            else if(data1["allergy2"]=="dairy product") {
              if (data["breakfast"][randomnumber.toString()]["allergy"] != "dairy product" &&
                  data["Lunch"][randomnumber2.toString()]["allergy"] != "dairy product" &&
                  data["dinner"][randomnumber3.toString()]["allergy"] != "dairy product"
              )
              {
                if (data["breakfast"][randomnumber.toString()]["kcal"] +
                    data["Lunch"][randomnumber2.toString()]["kcal"] +
                    data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                    data["breakfast"][randomnumber.toString()]["kcal"] +
                        data["Lunch"][randomnumber2.toString()]["kcal"] +
                        data["dinner"][randomnumber3.toString()]["kcal"]<=range2) {
                  print(randomnumber);
                  print(randomnumber2);
                  print(randomnumber3);
                  isReached = true;
                }
                else
                {
                  print("still working");
                }
              }
            }
            else
            {
              if (data["breakfast"][randomnumber.toString()]["kcal"] +
                  data["Lunch"][randomnumber2.toString()]["kcal"] +
                  data["dinner"][randomnumber3.toString()]["kcal"] >=range1 &&
                  data["breakfast"][randomnumber.toString()]["kcal"] +
                      data["Lunch"][randomnumber2.toString()]["kcal"] +
                      data["dinner"][randomnumber3.toString()]["kcal"]<=range2) {
                print(randomnumber);
                print(randomnumber2);
                print(randomnumber3);
                isReached = true;
              }
              else {
                print("still working");
              }
            }
          }

        }



      }
      isReached = false;
      idUsers.update({
        "breakfast$i": randomnumber,
        "Lunch$i": randomnumber2,
        "dinner$i": randomnumber3,
        "Diet Set": true,
      });
    }

    daynumber = 0;

    var now = new DateTime.now();
    var formatter = new DateFormat('MM/dd/yyyy');
    String formattedDate = formatter.format(now);
    idUsers.update({
      "Date": formattedDate,
      "breakfast checkbox":false,
      "Lunch checkbox":false,
      "dinner checkbox":false,
      "difference":8,
    });
    setCheckbox1();

  }

}

Widget GetBreakfast(bool calories){
  return FutureBuilder<String>(
    future: getItem("breakfast", calories),
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        String name= snapshot.data!;
        return Text(
          name,
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


Widget GetLunch(bool calories){
  return FutureBuilder<String>(
    future: getItem("Lunch",calories),
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        String name= snapshot.data!;
        return Text(
          name,
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



Widget GetDinner(bool calories){
  return FutureBuilder<String>(
    future: getItem("dinner",calories),
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        String name= snapshot.data!;
        return Text(
          name,
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


String checkboxItem="";
Future <String> getItem(String meal,bool calories) async
{
  final doc = await dietsn.get();
  final data = doc.data() as Map<String, dynamic>;
  final doc1 = await idUsers.get();
  final data1 = doc1.data() as Map<String, dynamic>;

  await GeneratingDiet();
  String name;
  if(meal == "breakfast" && calories == false)
  {
    name=data[meal][data1["$meal$daynumber"].toString()]["name"];
    checkboxItem=name;
    return name;
  }
  else if(meal == "breakfast" && calories == true)
  {
    name=(data[meal][data1["$meal$daynumber"].toString()]["kcal"]).toString();
    checkboxItem=name;
    return name;
  }
  else if(meal=="Lunch" && calories==false)
  {
    name=data[meal][data1["$meal$daynumber"].toString()]["name"];
    checkboxItem=name;
    return name;
  }
  else if(meal == "Lunch" && calories == true)
  {
    name=(data[meal][data1["$meal$daynumber"].toString()]["kcal"]).toString();
    checkboxItem=name;
    return name;
  }
  else if(meal == "dinner" && calories == false)
  {
    name=data[meal][data1["$meal$daynumber"].toString()]["name"];
    checkboxItem=name;
    return name;
  }
  else if(meal == "dinner" && calories == true)
  {
    name=(data[meal][data1["$meal$daynumber"].toString()]["kcal"]).toString();
    checkboxItem=name;
    return name;
  }
  else
  {
    return '';
  }
}

Widget GetDayDinner(int day,bool calories){
  return FutureBuilder<String>(
    future:  getItemDays("dinner",day,calories),
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        String name = snapshot.data!;
        return Text(
          name,
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


Widget GetDayBreakfast(int day,bool calories){
  return FutureBuilder<String>(
    future: getItemDays("breakfast",day,calories),
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        String name = snapshot.data!;
        return Text(
          name,
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


Widget GetDayLunch(int day,bool calories){
  return FutureBuilder<String>(
    future: getItemDays("Lunch",day,calories),
    builder: (context,snapshot){
      if(snapshot.hasError){
        return Text("${snapshot.error}");
      }else if(snapshot.hasData){
        String name = snapshot.data!;

        return Text(
          name,
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


Future <String> getItemDays(String meal,int day,bool calories) async
{
  final doc = await dietsn.get();
  final data = doc.data() as Map<String, dynamic>;
  final doc1 = await idUsers.get();
  final data1 = doc1.data() as Map<String, dynamic>;

  //GeneratingDiet();
  String name;

  if(meal == "breakfast" && calories==false)
  {
    name=data[meal][data1["$meal$day"].toString()]["name"];
    return name;
  }
  else if(meal == "breakfast" && calories==true)
  {
    name=(data[meal][data1["$meal$day"].toString()]["kcal"]).toString();
    return name;
  }
  else if(meal=="Lunch" && calories==false)
  {
    name=data[meal][data1["$meal$day"].toString()]["name"];
    return name;
  }
  else if(meal=="Lunch" && calories==true)
  {
    name=(data[meal][data1["$meal$day"].toString()]["kcal"]).toString();
    return name;
  }
  else if(meal == "dinner" && calories==false)
  {
    name=data[meal][data1["$meal$day"].toString()]["name"];
    return name;
  }
  else if(meal == "dinner" && calories==true)
  {
    name=(data[meal][data1["$meal$day"].toString()]["kcal"]).toString();
    return name;
  }
  else{
    return "";
  }
}

bool breakfastcheckbox=false;
bool lunchcheckbox=false;
bool dinnercheckbox=false;
setCheckbox1()async{
  final doc1 = await idUsers.get();
  final data1 = doc1.data() as Map<String, dynamic>;
  await GeneratingDiet();
  if(data1["difference"]!=daynumber)
  {
    idUsers.update({
      "breakfast checkbox":false,
      "Lunch checkbox":false,
      "dinner checkbox":false,
      "difference":daynumber,
    });
    breakfastcheckbox=false;
    lunchcheckbox=false;
    dinnercheckbox=false;
    await setConsumedCalories(false, 0, true);
    await setConsumedWater(false, 0, true);
  }
  else
  {
    breakfastcheckbox=data1["breakfast checkbox"];
    lunchcheckbox=data1["Lunch checkbox"];
    dinnercheckbox=data1["dinner checkbox"];
  }

  return true;
}



setCheckbox(bool istrue,String meal)async{
  if(meal=="breakfast")
  {
    idUsers.update({
      "breakfast checkbox":istrue,
    });
  }

  if(meal=="Lunch")
  {
    idUsers.update({
      "Lunch checkbox":istrue,
    });
  }

  if(meal=="dinner")
  {
    idUsers.update({
      "dinner checkbox":istrue,
    });
  }
}

int consumedcalories=0;
int caloriestarget=0;
setConsumedCalories(bool firsttime,int calories,bool newday)async{
  final doc1 = await idUsers.get();
  final data1 = doc1.data() as Map<String, dynamic>;
  caloriestarget=data1["calories"];
  if(newday)
  {
    idUsers.update({
      "consumed calories":0,
    });
    consumedcalories=0;
  }

  else if(firsttime)
  {
    consumedcalories=data1["consumed calories"];
  }
  else{
    idUsers.update({
      "consumed calories": calories,
    });
  }

  return true;
}

int waterconsumed=0;
int watertarget=0;
setConsumedWater(bool firsttime,int mL,bool newday)async{
  final doc1 = await idUsers.get();
  final data1 = doc1.data() as Map<String, dynamic>;

  watertarget=data1["water target"];
  if(newday)
  {
    idUsers.update({
      "water consumed":0,
    });
    waterconsumed=0;
  }

  else if(firsttime)
  {
    waterconsumed=data1["water consumed"];
  }
  else{
    idUsers.update({
      "water consumed": mL,
    });
  }

  return true;
}


Future changeMeal(int day,String meal)async
{
  final doc = await dietsn.get();
  final data = doc.data() as Map<String, dynamic>;
  final doc1 = await idUsers.get();
  final data1 = doc1.data() as Map<String, dynamic>;


  Random random = new Random();
  String diettype = data1["Diet Type"];
  bool isReached = false;
  int randomnumber = 0;
  int mealnumber=data1["$meal$day"];
  int range2=(data[meal][mealnumber.toString()]["kcal"])+50;
  int range1=(data[meal][mealnumber.toString()]["kcal"])-50;
  int dbrange=0;
  if(meal=="breakfast")
  {
    dbrange=17;
  }
  else if(meal=="Lunch"||meal=="dinner")
  {
    dbrange=34;
  }
  while(!isReached)
  {
    randomnumber = random.nextInt(dbrange);
    if(randomnumber==mealnumber)
    {

    }
    else if (diettype == "Normal Diet"){
      if(data1["allergy1"]==null&&data1["allergy2"]==null)
      {
        if(data[meal][randomnumber.toString()]["kcal"]>=
            range1&&
            data[meal][randomnumber.toString()]["kcal"]<=
                range2
        )
        {
          print(data[meal][randomnumber.toString()]["kcal"]);
          print(data[meal][mealnumber.toString()]["kcal"]);
          idUsers.update({
            "$meal$day":randomnumber,
          });
          isReached=true;
        }
      }
      else if(data1["allergy1"]=="nuts product"&&data1["allergy2"]=="dairy product")
      {
        if(data[meal][randomnumber.toString()]["allergy"]=="nuts product"||
            data[meal][randomnumber.toString()]["allergy"]=="dairy product")
        {

        }
        else if(data[meal][randomnumber.toString()]["kcal"]>=
            range1&&
            data[meal][randomnumber.toString()]["kcal"]<=
                range2)
        {
          print(randomnumber);
          idUsers.update({
            "$meal$day":randomnumber,
          });
          isReached=true;
        }
      }
      else if(data1["allergy1"]=="nuts product")
      {
        if(data[meal][randomnumber.toString()]["allergy"]=="nuts product")
        {

        }
        else if(//data[meal][randomnumber.toString()]["kcal"]>=
        //range1&&
        //data[meal][randomnumber.toString()]["kcal"]<=
        //range2
        data[meal][randomnumber.toString()]["kcal"]>0
        )
        {
          print(randomnumber);
          idUsers.update({
            "$meal$day":randomnumber,
          });
          isReached=true;
        }
      }
      else if(data1["allergy2"]=="dairy product")
      {
        if(data[meal][randomnumber.toString()]["allergy"]=="dairy product")
        {

        }
        else if(data[meal][randomnumber.toString()]["kcal"]>=
            range1&&
            data[meal][randomnumber.toString()]["kcal"]<=
                range2)
        {
          print(randomnumber);
          idUsers.update({
            "$meal$day":randomnumber,
          });
          isReached=true;
        }
      }
    }
    else if(diettype == "Keto Diet"){
      if(data[meal][randomnumber.toString()]["diet"]==diettype)
      {
        if (data1["allergy1"] == null && data1["allergy2"] == null) {
          if (data[meal][randomnumber.toString()]["kcal"]>=
              range1&&
              data[meal][randomnumber.toString()]["kcal"]<=
                  range2) {
            print(randomnumber);
            idUsers.update({
              "$meal$day": randomnumber,
            });
            isReached = true;
          }

        }
        if (data1["allergy1"] == "nuts product" &&
            data1["allergy2"] == "diary product") {
          if (data[meal][randomnumber.toString()]["allergy"] ==
              "nuts product" ||
              data[meal][randomnumber.toString()]["allergy"] ==
                  "dairy product") {

          }
          else if (data[meal][randomnumber.toString()]["kcal"]>=
              range1&&
              data[meal][randomnumber.toString()]["kcal"]<=
                  range2) {
            print(randomnumber);
            idUsers.update({
              "$meal$day": randomnumber,
            });
            isReached = true;
          }
        }
        else if (data1["allergy1"] == "nuts product") {
          if (data[meal][randomnumber.toString()]["allergy"] ==
              "nuts product") {

          }
          else if ( data[meal][randomnumber.toString()]["kcal"]>=
              range1&&
              data[meal][randomnumber.toString()]["kcal"]<=
                  range2
          ) {
            print(randomnumber);
            idUsers.update({
              "$meal$day": randomnumber,
            });
            isReached = true;
          }
        }
        else if (data1["allergy2"] == "dairy product") {
          if (data[meal][randomnumber.toString()]["allergy"] ==
              "dairy product") {

          }
          else if ( data[meal][randomnumber.toString()]["kcal"]>=
              range1&&
              data[meal][randomnumber.toString()]["kcal"]<=
                  range2
          ) {
            print(randomnumber);
            idUsers.update({
              "$meal$day": randomnumber,
            });
            isReached = true;
          }
        }
      }
    }
    else if(diettype == "Vegan Diet"){
      if(data[meal][randomnumber.toString()]["diet"]==diettype)
      {
        if (data1["allergy1"] == null && data1["allergy2"] == null) {
          if ( data[meal][randomnumber.toString()]["kcal"]>=
              range1&&
              data[meal][randomnumber.toString()]["kcal"]<=
                  range2
          ) {
            print(randomnumber);
            idUsers.update({
              "$meal$day": randomnumber,
            });
            isReached = true;
          }

        }
        if (data1["allergy1"] == "nuts product" &&
            data1["allergy2"] == "diary product") {
          if (data[meal][randomnumber.toString()]["allergy"] ==
              "nuts product" ||
              data[meal][randomnumber.toString()]["allergy"] ==
                  "dairy product") {

          }
          else if ( data[meal][randomnumber.toString()]["kcal"]>=
              range1&&
              data[meal][randomnumber.toString()]["kcal"]<=
                  range2
          ) {
            print(randomnumber);
            idUsers.update({
              "$meal$day": randomnumber,
            });
            isReached = true;
          }
        }
        else if (data1["allergy1"] == "nuts product") {
          if (data[meal][randomnumber.toString()]["allergy"] ==
              "nuts product") {

          }
          else if ( data[meal][randomnumber.toString()]["kcal"]>=
              range1&&
              data[meal][randomnumber.toString()]["kcal"]<=
                  range2) {
            print(randomnumber);
            idUsers.update({
              "$meal$day": randomnumber,
            });
            isReached = true;
          }
        }
        else if (data1["allergy2"] == "dairy product") {
          if (data[meal][randomnumber.toString()]["allergy"] ==
              "dairy product") {

          }
          else if (data[meal][randomnumber.toString()]["kcal"]>=
              range1&&
              data[meal][randomnumber.toString()]["kcal"]<=
                  range2
          ) {
            print(randomnumber);
            idUsers.update({
              "$meal$day": randomnumber,
            });
            isReached = true;
          }
        }
      }
    }
  }
}
