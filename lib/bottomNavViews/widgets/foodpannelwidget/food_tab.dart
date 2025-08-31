import 'package:flutter/material.dart';

class FoodTab extends StatefulWidget {
  const FoodTab({super.key, required this.food});
  final MapEntry<String, dynamic> food;

  @override
  State<FoodTab> createState() => _FoodTabState();
}

class _FoodTabState extends State<FoodTab> {
  @override
  Widget build(BuildContext context) {
    final item = widget.food.value[0];

    return Container(
      margin: EdgeInsets.only(left: 12),
      height: 50,
      width: 102,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(backgroundImage: AssetImage(item['img'])),
            Text(
              item['Name'],
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
