import 'package:flutter/material.dart';

import '../components/avoid.dart';

class AvoidSuggest extends StatefulWidget {
  final String disease;
  const AvoidSuggest({Key? key, required this.disease}) : super(key: key);

  @override
  State<AvoidSuggest> createState() => _AvoidSuggestPageState();
}

class _AvoidSuggestPageState extends State<AvoidSuggest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Disease Diet Restaurant Finder',
          style: TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Avoid(disease: widget.disease),
        ],
      ),
    );
  }
}
