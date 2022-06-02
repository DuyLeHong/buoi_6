// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'exercise_1/screen/cart/cart_screen.dart';
import 'exercise_1/screen/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/cart_page': (context) => const CartScreen(),
      },
    );
  }
}
