import 'package:flutter/material.dart';
import 'package:ui_challenge/home_page.dart';
import 'package:ui_challenge/model/classroomPage.dart';
import 'package:ui_challenge/model/classroomTopic.dart';
import 'package:ui_challenge/model/headlinedTopics.dart';
import 'package:ui_challenge/model/instructorDetailedPage.dart';
import 'package:ui_challenge/model/productPage.dart';
import 'package:ui_challenge/model/purchasePage.dart';

class AppRouter{
  static Route onGenerateRoute(RouteSettings settings){
    
    switch(settings.name){
      case HomePage.routeName:
        return HomePage.route();

      case ClassroomPage.routeName:
        return ClassroomPage.route(headlinedTopic: settings.arguments as HeadlinedTopics);  
      
      case ProductPage.routeName:
        return ProductPage.route(classroomTopics: settings.arguments as ClassroomTopics);

      case InstructorDetails.routeName:
        return InstructorDetails.route(classroomTopics: settings.arguments as ClassroomTopics);  

      case CoursePurchase.routeName:
        return CoursePurchase.route(classroomTopics: settings.arguments as ClassroomTopics);

      default: 
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Container()
    );
  }
}