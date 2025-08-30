import 'package:flutter/material.dart';
import 'package:foodapp/utils/styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            // height: 250,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),

            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: Styles.boxDec,
                            child: Icon(
                              Icons.location_on_sharp,
                              color: Styles.textWhiteColor,
                            ),
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Location',
                                    style: Styles.homeTopHeaderLocation,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Sterling place,Vrooklyn',
                                    style: Styles.homeTopHeaderBottomLocation,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: Styles.boxDec,
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Styles.textWhiteColor,
                                ),
                              ),
                              SizedBox(width: 12),
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: Styles.boxDec,
                                child: Icon(
                                  Icons.shopping_bag_outlined,
                                  color: Styles.textWhiteColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        'What are you going \nto eat today?',
                        style: Styles.homeBigText,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(11),
                    width: double.infinity,

                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 63, 61, 61),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.search, color: Styles.textWhiteColor),
                            SizedBox(width: 6),
                            Text(
                              'Search here..',
                              style: TextStyle(color: Styles.textWhiteColor),
                            ),
                          ],
                        ),
                        Container(
                          width: 80,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Styles.textWhiteColor,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Text(
                                  'Filter',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(Icons.swap_horiz_outlined),
                                ),
                              ),
                            ],
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
  }
}
