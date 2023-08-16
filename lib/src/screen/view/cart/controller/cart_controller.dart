import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/cart/model/cart_model.dart';

class CartController extends GetxController {
  var cardList = <CardData>[
    CardData(name: "HeadPhone",price: 152,quantity: 1,variant: "black",isSelected: false),
    CardData(name: "Laptop",price: 152,quantity: 1,variant: "black",isSelected: false),
    CardData(name: "Charger",price: 152,quantity: 1,variant: "black",isSelected: false),
    // Add more cards as needed
  ].obs;

  final isSelected = RxBool(false);
  var totalPrice = 0.00.obs;



  void toggleCardSelection(int index) {
    cardList[index].isSelected = !cardList[index].isSelected;
    print(cardList[index].isSelected);

    isSelected.value = cardList.any((card) => card.isSelected);


    cardList.refresh();
    incrementQuantity(index);
    decrementQuantity(index);
    calculateTotalPrice();

  }


  void calculateTotalPrice() {
    totalPrice.value = cardList
        .where((card) => card.isSelected)
        .fold(0, (sum, card) => sum + card.price * card.quantity);
    cardList.refresh();
  }

  void incrementQuantity(int index) {
    cardList[index].quantity++;
    cardList.refresh();
    calculateTotalPrice();

  }

  void decrementQuantity(int index) {
    if (cardList[index].quantity > 1) {
      cardList[index].quantity--;
      cardList.refresh();
      calculateTotalPrice();

    }
  }




  // void toggleCardSelection(int index, {bool isAdding = true}) {
  //   cardList[index].isSelected = !cardList[index].isSelected;
  //   if (isAdding) {
  //     cardList[index].quantity++;
  //   } else {
  //     if (cardList[index].quantity > 1) {
  //       cardList[index].quantity--;
  //     }
  //   }
  //
  //   isSelected.value = cardList.any((card) => card.isSelected);
  //
  //   cardList.refresh();
  //   calculateTotalPrice();
  // }
  //
  // void calculateTotalPrice() {
  //   totalPrice.value = cardList
  //       .where((card) => card.isSelected)
  //       .fold(0, (sum, card) => sum + card.price * card.quantity);
  // }



}