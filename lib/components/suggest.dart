import 'package:flutter/material.dart';
import '../models/disease.dart';

class Suggest extends StatefulWidget {
  const Suggest({Key? key, required this.disease}) : super(key: key);

  final String disease;
  @override
  State<Suggest> createState() => _SuggestState();
}

class _SuggestState extends State<Suggest> {
  List<String> list = [];

  void _getDiseases() {
    List<DiseaseModel> temp = DiseaseModel.getdiseases();

    for (var d in temp) {
      if(d.name == widget.disease){
        for (var f in d.suggest){
          list.add(f);
        }
      }
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
        const Text(
          "Suggest",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400
          ),
        ),
        ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 30,
                child: Center(child: Text(
                  list[index],
                  style: const TextStyle(
                    color: Colors.green,
                  ),
                )),
              );
            }
        ),
      ],
    );
  }
}