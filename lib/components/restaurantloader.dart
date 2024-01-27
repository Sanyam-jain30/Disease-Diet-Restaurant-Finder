import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class RestaurantLoader extends StatefulWidget {
  const RestaurantLoader({Key? key}) : super(key: key);

  @override
  State<RestaurantLoader> createState() => _RestaurantLoaderState();
}

class _RestaurantLoaderState extends State<RestaurantLoader> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.amberAccent,
        boxShadow: const [
          BoxShadow(
            color: Colors.orangeAccent,
            blurRadius: 8.0,
            spreadRadius: 3.0,
          ),
          BoxShadow(
            color: Colors.white,
            blurRadius: 0.0,
            spreadRadius: 2.0,
          ),
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LoadingAnimationWidget.inkDrop(
            color: Colors.black,
            size: 20,
          ),
          const SizedBox(width: 20),
          const Text(
            "Fetching Restaurants",
            style: TextStyle(
              fontSize: 20
            ),
          )
        ],
      ),
    );
  }
}