// class CardData {
//   final String name;
//   final String variant;
//   late final int quantity;
//   final double price;
//   bool isSelected;
//
//
//   CardData({required this.name,required this.price,this.quantity = 1,required this.variant,this.isSelected = false});
//
// }

class CardData {
  final String name;
  final double price;
  final String variant;
  bool isSelected;
  int quantity;

  CardData({
    required this.name,
    required this.price,
    required this.variant,
    this.isSelected = false,
    this.quantity = 1, // Initialize quantity here
  });
}
