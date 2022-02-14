import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Icon(
            Icons.shopping_cart,
            color: Colors.green,
            size: 150.0,
          ),
        ),
      ),
    );
  }
}