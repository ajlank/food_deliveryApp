import 'package:flutter/material.dart';

class OfferView extends StatelessWidget {
  const OfferView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        width: double.infinity,

        child: Column(
          children: List.generate(200, (index) {
            return Text('offer');
          }),
        ),
      ),
    );
  }
}
