import 'dart:convert';

import 'package:fooddevelivery_user_codecanyon/Model/FoodList.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

List<FoodList> allFoodData = List();

Future<List<FoodList>> loadList() async {

  final responce = await http.get("http://food.gono.xyz/api/v1/food/list");
  var foodList = json.decode(responce.body);


  for (var foodItem in foodList) {
    allFoodData.add(FoodList.fromJson(foodItem));
  }
  print(allFoodData[0].foodName);
  return allFoodData;
}