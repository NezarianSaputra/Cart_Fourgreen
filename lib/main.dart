import 'package:cart_fourgeen/cart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Cart());
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CartLayout(),
    );
  }
}
