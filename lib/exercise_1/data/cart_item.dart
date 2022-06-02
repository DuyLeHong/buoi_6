import 'package:flutter_exercise_5/exercise_1/data/product.dart';

class CartItem {
  final Product product;
  int count = 1;
  double get totalPrice => product.price * count;

  CartItem({required this.product});
}
