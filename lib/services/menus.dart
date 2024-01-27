import 'dart:convert';
import 'dart:developer';

import 'package:disease_diet_restaurant_finder/models/resultRestaurant.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;

class MenusService{

  Future<List<String>> webScrap(var name, var place, var city) async{
    name = name.toString().replaceAll(' ', '-').toLowerCase();
    place = place.toString().toLowerCase();
    city = city.toString().toLowerCase();

    List<String> items = [];

    // var uri = Uri.parse('https://www.zomato.com/$city/$name-$place/order');
    var uri = Uri.parse('https://www.zomato.com/vellore/dominos-pizza-kosapet/order');
    var response = await http.get(uri);
    dom.Document html = dom.Document.html(response.body);

    if(response.statusCode == 200){
      String? status = html.querySelector('section.sc-etwtAo.dIdAej > section > span')?.innerHtml.trim();
      if(status!.contains('Open') || status!.contains('Closes')){
        log("Reached Stage-1");
        var outerContainer = html.querySelector('section.sc-eXfwOT.iyogms > section > section.sc-boQTqM.hDraVw');
        var innerContainers = outerContainer?.querySelectorAll('section.sc-boQTqM.hDraVw');
        log(innerContainers?.length as String);

        var foodItem, price, finalContainer;

        innerContainers?.map((ele) => {
          log("Reached Stage - 2"),
          finalContainer = ele.querySelectorAll('div.sc-cTnXXA.bMdBtw > div > div'),
          finalContainer.map((content) => {
            foodItem = content.querySelector('div.sc-1s0saks-10.cYSFTJ > div > div > h4')?.innerHtml.trim(),
            price = content.querySelector('div.sc-17hyc2s-3.jOoliK.sc-1s0saks-8.gYkxGN > span')?.innerHtml.trim(),
            log(foodItem),
            log(price),
            items.add(foodItem)
          })
        });

      }
    }

    return items;
  }

  Future<RestaurantData?> getPostsMenu(var lat, var lon, var data, var disease) async{
    Map<String, dynamic> restaurants = json.decode(data);

    restaurants.forEach((key, value) {
      if(key == 'results'){
        value.forEach((restaurant) {
          var name = restaurant['poi']['name'];
          var place = restaurant['address']['municipalitySubdivision'];
          var city = restaurant['address']['municipality'];

          Future<List<String>> Menu = webScrap(name, place, city);

        });
      }
    });

    restaurants['menu'] = {
      'avoid': ['New'],
      'safer': ['New'],
      'suggest': ['New']
    };

    RestaurantData result = RestaurantData.fromJson(restaurants);
    return result;
  }
}