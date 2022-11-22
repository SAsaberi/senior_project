import 'package:ai_diet_firebase/showoptions.dart';
import 'package:flutter/material.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class Allergies extends StatefulWidget {
  const Allergies({super.key});

  @override
  State<Allergies> createState() => _AllergiesState();
}

class Allergy {
  String name;
  bool isChecked;
  Allergy(this.name, {this.isChecked = false});
}

// 1.
final List<Allergy> allergy = [
  Allergy('Allergy1'),
  Allergy('Allergy2'),
  Allergy('Allergy3')
];

class _AllergiesState extends State<Allergies> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView.builder(
        itemCount: allergy.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            // 2.
            title: Text('${allergy[index].name}'),
            // 3.
            value: allergy[index].isChecked,
            // 4.
            onChanged: (bool? value) {
              setState(() {
                allergy[index].isChecked = value!;
              });
            },
            secondary: const Icon(Icons.numbers),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
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
        child: const Icon(Icons.done),
      ),
    );
  }
}
