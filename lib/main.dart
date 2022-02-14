import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenge/calender_page.dart';
import 'package:ui_challenge/cart_page.dart';
import 'package:ui_challenge/config/appRouter.dart';
import 'package:ui_challenge/home_page.dart';
import 'package:ui_challenge/login_page.dart';
import 'package:ui_challenge/menu_items.dart';
import 'package:ui_challenge/model/menu_item.dart';
import 'package:ui_challenge/profile_page.dart';

void main(){
  runApp(GlobalEducation());
}

class GlobalEducation extends StatelessWidget {
  const GlobalEducation({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Global Skills Development',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomePage.routeName,
    );
  }
}