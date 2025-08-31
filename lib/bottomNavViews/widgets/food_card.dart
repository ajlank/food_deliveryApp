import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(22),
                    child: Image.network(
                      'https://tse3.mm.bing.net/th/id/OIP.XEh_-wsbPoVHZKHpv9Q_8gHaEi?pid=Api&P=0&h=220',
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
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('4.8'),
                                  Icon(
                                    Icons.star,
                                    color: const Color.fromARGB(
                                      255,
                                      255,
                                      205,
                                      79,
                                    ),
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
                        Text('Burger', style: TextStyle(color: Colors.white)),
                        SizedBox(height: 10),
                        Text(
                          'Beef Burger with latoos.Marshmellow',
                          style: TextStyle(color: Colors.white),
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
