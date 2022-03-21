import 'package:flutter/material.dart';
import 'package:ui_challenge/login_page.dart';

class CartPage extends StatelessWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Center(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.green,
                size: 150.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: (){
                UserLoginPage.logout();
              },
              child: const Text(
                'LOGOUT',
              ),
            ),
          ],
        ),
      ),
    );
  }
}