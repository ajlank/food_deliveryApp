import 'package:flutter/material.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: double.infinity,

        child: Column(
          children: List.generate(200, (index) {
            return Text('profile');
          }),
        ),
      ),
    );
  }
}
