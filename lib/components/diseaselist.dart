import 'dart:developer';

import 'package:disease_diet_restaurant_finder/models/disease.dart';
import 'package:flutter/material.dart';

import '../pages/avoidsuggest.dart';

class DiseaseList extends StatefulWidget {
  const DiseaseList({super.key});

  @override
  State<DiseaseList> createState() => _DiseaseListState();
}

class _DiseaseListState extends State<DiseaseList> {
  List<String> list = [];
  String? dropdownValue;

  void _getDiseases() {
    List<DiseaseModel> temp = DiseaseModel.getdiseases();

    for (var d in temp) {
      list.add(d.name);
    }
  }

  @override
  void initState() {
    super.initState();
    _getDiseases();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownButton<String>(
          menuMaxHeight: 300,
          value: dropdownValue,
          icon: const Icon(Icons.arrow_downward, color: Colors.deepPurple),
          elevation: 16,
          hint: const Text("Disease Name"),
          padding: const EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 8),
          style: const TextStyle(color: Colors.deepPurple, fontFamily: 'PlaypenSans'),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          dropdownColor: const Color(0xf2FFF5EE),
          onChanged: (String? value) {
            setState(() {
              dropdownValue = value!;
            });
          },
          items: list.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffFFAA33)
          ),
          onPressed: () {
            if (dropdownValue != null){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AvoidSuggest(disease: dropdownValue as String),
                  )
              );
            }
          },
          child: const Text(
            'Get Restaurants',
          ),
        ),
      ],
    );
  }
}