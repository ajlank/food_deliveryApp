import 'package:flutter/material.dart';

import 'package:foodapp/bottomNavViews/widgets/foodpannelwidget/food_tab.dart';

class FoodPannel extends StatefulWidget {
  const FoodPannel({super.key});

  @override
  State<FoodPannel> createState() => _FoodPannelState();
}

class _FoodPannelState extends State<FoodPannel> {
  List foodList = foodPannel.entries.toList();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Row(
          children: List.generate(foodList.length, (i) {
            var foodItem = foodList[i];

            return FoodTab(food: foodItem);
          }),
        ),
      ),
    );
  }
}

Map<String, dynamic> foodPannel = {
  "first": [
    {'Name': 'Burger', 'img': 'lib/assets/burger.jpg'},
  ],
  "second": [
    {'Name': 'Pizza', 'img': 'lib/assets/pizza.png'},
  ],
  "third": [
    {'Name': 'Sushi', 'img': 'lib/assets/sushi.jpg'},
  ],
  "fourth": [
    {'Name': 'Fries', 'img': 'lib/assets/fries.jpg'},
  ],
};
