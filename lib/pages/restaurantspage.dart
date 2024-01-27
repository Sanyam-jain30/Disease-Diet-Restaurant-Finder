import 'package:disease_diet_restaurant_finder/models/resultRestaurant.dart';
import 'package:flutter/material.dart';

class RestaurantsPage extends StatefulWidget {
  final RestaurantData? restaurantList;
  const RestaurantsPage({Key? key, required this.restaurantList}) : super(key: key);

  @override
  State<RestaurantsPage> createState() => _RestaurantsPageState();
}

class _RestaurantsPageState extends State<RestaurantsPage> {
  Future webScrapZomato() async{

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Restaurants',
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
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("hi")
        ],
      ),
    );
  }
}
