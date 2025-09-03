import 'package:flutter/material.dart';
import 'package:foodapp/bottomNavViews/widgets/foodWidget/increement_bar.dart';
import 'package:foodapp/homeproductList/controller/menu_item_controller.dart';
import 'package:get/get.dart';

class MenuDetails extends StatelessWidget {
  const MenuDetails({super.key});

  @override
  Widget build(BuildContext context) {
    MenuItemController menuItemController = Get.put(MenuItemController());
    return Obx(() {
      return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 236, 236, 234),
              expandedHeight: 320,
              collapsedHeight: 65,
              floating: true,

              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                background: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(25),
                  child: Image.network(
                    fit: BoxFit.cover,
                    menuItemController.foods.first.images[1],
                  ),
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 18),
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      // height: 500,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                menuItemController.foods.first.title,
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              IncreementBar(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 11,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Ratings'),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(Icons.star_border_outlined),
                                  SizedBox(width: 4),
                                  Text('4.8'),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Calories'),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(Icons.heart_broken_outlined),
                                  SizedBox(width: 4),
                                  Text('4.8'),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text('Times'),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(Icons.stop_circle_outlined),
                                  SizedBox(width: 4),
                                  Text('4.8'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 18),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 17,
                        vertical: 11,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(width: 2, height: 50, color: Colors.black),

                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "This is your description text. You can write multiple lines here.",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
