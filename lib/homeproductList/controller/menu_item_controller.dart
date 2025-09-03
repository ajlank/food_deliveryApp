import 'package:foodapp/homeproductList/model/food_list_model.dart';
import 'package:get/get.dart';

class MenuItemController extends GetxController {
  var _foods = <FoodListModel>[].obs;

  void setFood(FoodListModel food) {
    _foods.add(food);
  }

  List<FoodListModel> get foods => _foods;
}
