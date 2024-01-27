import 'package:auto_size_text/auto_size_text.dart';
import 'package:disease_diet_restaurant_finder/components/location.dart';
import 'package:disease_diet_restaurant_finder/components/suggest.dart';
import 'package:flutter/material.dart';

import '../components/avoid.dart';
import '../components/restaurantloader.dart';

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
        title: const AutoSizeText(
          'Finding Ingredients',
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Avoid(disease: widget.disease),
          Suggest(disease: widget.disease),
          const RestaurantLoader(),
          Location(disease: widget.disease)
        ],
      ),
    );
  }
}
