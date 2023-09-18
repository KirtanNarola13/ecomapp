import 'package:ecom_app/screens/cartpage.dart';
import 'package:ecom_app/screens/homepage.dart';
import 'package:flutter/material.dart';
import 'package:ecom_app/screens/detailpage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const MyShop(),
        'detail_page': (context) => const DetailPage(),
        'cart_page': (context) => const cartPage(),
      },
    ),
  );
}
