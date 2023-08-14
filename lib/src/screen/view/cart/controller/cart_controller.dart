import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/cart/model/cart_model.dart';

class CartController extends GetxController {
  var cardList = <CardData>[
    CardData(title: "Card 1"),
    CardData(title: "Card 2"),
    CardData(title: "Card 3"),
    // Add more cards as needed
  ].obs;

  void toggleCardSelection(int index) {
    cardList[index].isSelected = !cardList[index].isSelected;
    update();
  }
}