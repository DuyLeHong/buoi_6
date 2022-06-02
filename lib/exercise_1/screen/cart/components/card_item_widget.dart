// ignore_for_file: file_names, unnecessary_import,, non_constant_identifier_names, camel_case_types, prefer_final_fields
// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/cart_item.dart';

class CartItemWidget extends StatefulWidget {
  const CartItemWidget({
    Key? key,
    required this.cartItem,
  }) : super(key: key);

  final CartItem cartItem;

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

final Counter counter = Get.put(Counter());

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    final product = widget.cartItem.product;

    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18.0),
                topLeft: Radius.circular(18.0),
              ),
              child: Image.asset('assets/images/${product.image}'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          // ignore: unnecessary_string_interpolations
                          '${product.name}',
                          // overflow: TextOverflow.ellipsis,

                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        'Price:',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '\$${product.price}',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Sub Total:',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Obx(
                        () => Text(
                          '${widget.cartItem.totalPrice}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xfff57c00),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Free Ship',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xfff57c00),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            color: Color(0xffd32f2f),
                            onPressed: () => counter.subtraction(),
                          ),
                          SizedBox(
                            height: 40,
                            width: 32,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Obx(
                                () => Text(
                                  '${counter._Counter}',
                                  style: TextStyle(
                                    color: Color(0xff092232),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.add,
                            ),
                            color: Color(0xff66bb6a),
                            onPressed: () => counter.add(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(
          Radius.circular(18.0),
        ),
      ),
    );
  }
}

class Counter extends GetxController {
  RxInt _Counter = 0.obs;

  add() {
    _Counter.value++;
  }

  subtraction() {
    if (_Counter.value <= 0) {
      Get.snackbar(
        'Cart',
        ' Bạn không thể chọn sản phẩm dưới 0',
        barBlur: 20,
        duration: Duration(seconds: 3),
      );
    } else {
      _Counter.value--;
    }
  }
}
