// ignore_for_file: file_names, unnecessary_import,, non_constant_identifier_names, must_be_immutable
// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart_state.dart';
import 'card_item_widget.dart';

class CartListWidget extends StatelessWidget {
  const CartListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          color: Color(0xffdcdcdc),
        ),
        ListView.separated(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.all(10),
          itemCount: cartItemList.length,
          itemBuilder: (context, index) {
            final cart = cartItemList[index];
            return CartItemWidget(
              cartItem: cart,
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            height: 15,
          ),
        ),
      ],
    );
  }
}
