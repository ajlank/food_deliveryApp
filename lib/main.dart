import 'package:flutter/material.dart';
import 'package:foodapp/bottomNavViews/home_view.dart';
import 'package:foodapp/bottomNavViews/offer_view.dart';
import 'package:foodapp/bottomNavViews/order_view.dart';
import 'package:foodapp/bottomNavViews/profile_view.dart';
import 'package:foodapp/bottomNavViews/widgets/foodWidget/menu_details.dart';
import 'package:foodapp/bottomNavViews/wishlist_view.dart';
import 'package:foodapp/uiController/getXController/home_view_controller.dart';
import 'package:foodapp/utils/routes.dart';
import 'package:foodapp/views/auth/login_view.dart';
import 'package:foodapp/views/auth/sign_up_view.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Food Delivery App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: ViewController(),
      routes: {
        loginRoute: (context) => LoginView(),
        signUpRoute: (context) => SignUpView(),
        homeRoute: (context) => MyHomeView(),
        menuDetailsRoute: (context) => MenuDetails(),
      },
    );
  }
}

class ViewController extends StatelessWidget {
  const ViewController({super.key});

  @override
  Widget build(BuildContext context) {
    final accessToken = GetStorage().read('accessToken');
    if (accessToken != null) {
      return MyHomeView();
    } else {
      return SignUpView();
    }
  }
}

//main View
class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  final List<Widget> navViews = const [
    HomeView(),
    OrderView(),
    OfferView(),
    WishListView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    HomeViewController controller = Get.put(HomeViewController());

    return Obx(() {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 234, 233),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: Colors.amber,
          currentIndex: controller.getCurrentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_mini), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer_outlined),
              label: 'Offer',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.heart_broken_outlined),
              label: 'Wishlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_3_outlined),
              label: 'Profile',
            ),
          ],
          onTap: (v) {
            controller.setCurrentIndex = v;
          },
        ),
        body: navViews[controller.getCurrentIndex],
      );
    });
  }
}
