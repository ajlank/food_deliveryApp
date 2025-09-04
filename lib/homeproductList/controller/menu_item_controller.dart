import 'package:foodapp/homeproductList/model/food_list_model.dart';
import 'package:get/get.dart';

class MenuItemController extends GetxController {
  final _foods = <FoodListModel>[].obs;

  void setFood(FoodListModel food) {
    _foods.add(food);
  }

  List<FoodListModel> get foods => _foods;

  void clearList() {
    _foods.clear();
  }
}
