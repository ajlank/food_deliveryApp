import 'package:flutter/material.dart';
import 'package:foodapp/bottomNavViews/widgets/food_card.dart';
import 'package:foodapp/bottomNavViews/widgets/food_pannel.dart';
import 'package:foodapp/bottomNavViews/widgets/home_top_widget.dart';
import 'package:foodapp/bottomNavViews/widgets/offer_pannel.dart';
import 'package:foodapp/common/reusable_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            HomeTopWidget(),
            SizedBox(height: 10),
            ReusableHeader(leftText: "Today's Offer!", rightText: 'See All'),
            SizedBox(height: 6),
            OfferPannel(),
            SizedBox(height: 15),
            FoodPannel(),
            SizedBox(height: 15),
            ReusableHeader(leftText: 'Fastest Near You', rightText: 'See All'),
            SizedBox(height: 15),
            FoodCard(),
          ],
        ),
      ),
    );
  }
}
