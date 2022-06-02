import 'package:flutter/cupertino.dart';
import 'package:flutter_exercise_5/exercise_1/data/cart_item.dart';
import 'package:flutter_exercise_5/exercise_1/screen/cart/cart_state.dart';
import 'package:flutter_exercise_5/exercise_1/screen/home/component/product_item_widget.dart';

import '../home_state.dart';

class ProductListWidget extends StatelessWidget {
  const ProductListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
      itemCount: productList.length,
      itemBuilder: (_, index) {
        final p = productList[index];
        return ProductItemWidget(
          product: p,
          onItemClicked: (product) {
            final cart = CartItem(product: product);
            cartItemList.add(cart);
          },
        );
      },
    );
  }
}
