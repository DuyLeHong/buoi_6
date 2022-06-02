import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise_5/exercise_1/data/product.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    Key? key,
    required this.product,
    required this.onItemClicked,
  }) : super(key: key);

  final Product product;
  final Function(Product) onItemClicked;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                color: Colors.grey,
                child: Image.network(product.image),
              ),
              Text(
                product.name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                product.category,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: '${product.price}'),
                    const WidgetSpan(
                      child: SizedBox(
                        width: 8,
                      ),
                    ),
                    const TextSpan(text: '25\$'),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 10,
            right: 10,
            child: GestureDetector(
              onTap: () {
                onItemClicked(product);
              },
              child: Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
    );
  }
}
