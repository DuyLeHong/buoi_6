// ignore_for_file: file_names, unnecessary_import
// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'components/cart_list_widget.dart';
import 'components/check_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context, true);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        title: Text('My Cart'),
      ),
      body: CartListWidget(),
      // body: Demo(),
      bottomNavigationBar: CheckoutButton(),
    );
  }
}
