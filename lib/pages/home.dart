import 'package:auto_size_text/auto_size_text.dart';
import 'package:disease_diet_restaurant_finder/components/diseaselist.dart';
import 'package:disease_diet_restaurant_finder/components/videoplayer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AutoSizeText(
          'Disease Diet Restaurant Finder',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          VideoPlayerComponent(),
          SizedBox(height: 20),
          DiseaseList()
        ],
      ),
    );
  }
}
