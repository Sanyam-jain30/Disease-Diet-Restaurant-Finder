import 'dart:async';
import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:disease_diet_restaurant_finder/services/restaurants.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../models/resultRestaurant.dart';
import '../pages/restaurantspage.dart';

class Location extends StatefulWidget{
  final String disease;
  const Location({Key? key, required this.disease}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool servicestatus = false;
  bool haspermission = false;
  late LocationPermission permission;
  late Position position;
  String long = "", lat = "", comment = "";
  late StreamSubscription<Position> positionStream;
  RestaurantData? restaurantData;

  @override
  void initState() {
    checkGps();
    super.initState();
  }

  getData() async {
    restaurantData = (await RestaurantsService().getPosts(lat, long, widget.disease))!;
    if(restaurantData != null){
      navigateToRestaurants();
    }
  }

  checkGps() async {
    servicestatus = await Geolocator.isLocationServiceEnabled();
    if(servicestatus){
      permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          comment = "Location permissions are denied";
        }else if(permission == LocationPermission.deniedForever){
          comment = "Location permissions are permanently denied";
        }else{
          haspermission = true;
        }
      }else{
        haspermission = true;
      }

      if(haspermission){
        setState(() {});

        getLocation();
      }
    }else{
      comment = "GPS Service is not enabled, turn on GPS location";
    }

    setState(() {});
  }

  getLocation() async {
    position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    // long = position.longitude.toString();
    // lat = position.latitude.toString();

    lat = "12.9165";
    long = "79.1325";

    setState(() {});

    LocationSettings locationSettings = const LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );

    StreamSubscription<Position> positionStream = Geolocator.getPositionStream(
        locationSettings: locationSettings).listen((Position position) {
          long = position.longitude.toString();
          lat = position.latitude.toString();

          setState(() {});
        });

    getData();
  }

  navigateToRestaurants() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>
              RestaurantsPage(restaurantList: restaurantData),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    if(comment != ""){
      return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Flushbar(
                duration: const Duration(seconds: 3),
                title: "Location Error",
                message: comment,
              )..show(context)
          ],
      );
    }
    else{
      return Container();
    }
  }
}