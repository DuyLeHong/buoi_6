import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise_5/exercise_1/screen/home/component/product_list_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // positional parameter
    // positional optional parameter
    // named parameter
    // final p = Product('', '1', '2', 12, '1');

    return Scaffold(
      appBar: AppBar(title: const Text('Home'), actions: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/cart_page');
          },
        )
      ]),
      body: const ProductListWidget(),
    );
  }
}
