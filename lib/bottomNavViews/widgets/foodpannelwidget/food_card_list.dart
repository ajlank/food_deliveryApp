import 'package:flutter/material.dart';
import 'package:foodapp/homeproductList/controller/menu_item_controller.dart';
import 'package:foodapp/homeproductList/model/food_list_model.dart';
import 'package:foodapp/utils/routes.dart';
import 'package:foodapp/utils/styles.dart';
import 'package:get/get.dart';

class FoodCardList extends StatelessWidget {
  const FoodCardList({super.key, required this.foods});

  final FoodListModel foods;

  @override
  Widget build(BuildContext context) {
    MenuItemController menuItemController = Get.put(MenuItemController());
    return GestureDetector(
      onTap: () {
        menuItemController.setFood(foods);
        Navigator.of(context).pushNamed(menuDetailsRoute);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17),
        child: Container(
          child: Stack(
            children: [
              SizedBox(
                height: 200,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(22),
                  child: Image.network(foods.images[1]),
                ),
              ),
              Positioned(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Container(
                        width: 65,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),

                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 6),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(foods.ratings.toString()),
                              Icon(
                                Icons.star,
                                color: const Color.fromARGB(255, 255, 205, 79),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(Icons.heart_broken_outlined),
                ),
              ),

              Positioned(
                bottom: 15,
                left: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(foods.title, style: Styles.foodNameStyle1),
                    SizedBox(height: 10),
                    SizedBox(
                      width: 260,
                      child: Text(
                        foods.description,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          backgroundColor: const Color.fromARGB(18, 2, 2, 2),
                        ),

                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
