import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/cart_page.dart';
import 'package:ui_challenge/constants/appRouting.dart';
import 'package:ui_challenge/home_page.dart';
import 'package:ui_challenge/login_page.dart';

void main() {
  runApp(GlobalEducation());
}

class GlobalEducation extends StatelessWidget {

  

  final authController = UserLoginPage();

  GlobalEducation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: '/',
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: authController.tryAutoLogin(),
        builder: (context, authResult){
          if(authResult.connectionState == ConnectionState.waiting){
            return const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
            );
          }
          else{
            if(authResult.data == true){
              return const CartPage();
            }
            return const HomePage();
          }
        },
      ),
    );
  }
}