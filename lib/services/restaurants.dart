import 'dart:convert';
import 'dart:developer';

import 'package:disease_diet_restaurant_finder/models/resultRestaurant.dart';
import 'package:disease_diet_restaurant_finder/services/menus.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class RestaurantsService{
  String TOMTOMAPI = dotenv.get("TOMTOMAPI", fallback: "");

  Future<RestaurantData?> getPosts(var lat, var lon, var disease) async{
    var client = http.Client();

    var uri = Uri.parse('https://api.tomtom.com/search/2/nearbySearch/.json?key=$TOMTOMAPI&lat=$lat&lon=$lon&categorySet=7315');
    var response = await client.get(uri);
    if(response.statusCode == 200){
      Map<String, dynamic> result = json.decode(response.body);
      Future<RestaurantData?> data = MenusService().getPostsMenu(lat, lon, json.encode(result), disease);
      return data;
    }
  }
}