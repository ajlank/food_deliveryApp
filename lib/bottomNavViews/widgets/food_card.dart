import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foodapp/bottomNavViews/widgets/foodpannelwidget/food_card_list.dart';
import 'package:foodapp/homeproductList/hooks/fetch/fetch_food_product.dart';

class FoodCard extends HookWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    final result = fetchFoodList();
    final food = result.foods;
    final isLoading = result.isLoading;
    final error = result.error;

    if (isLoading) {
      return CircularProgressIndicator();
    }
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(food.length, (i) {
          final foodItem = food[i];

          return FoodCardList(foods: foodItem);
        }),
      ),
    );
  }
}
