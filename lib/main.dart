import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/swipecarousel.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SwipeCarousel(),
    );
  }
}
