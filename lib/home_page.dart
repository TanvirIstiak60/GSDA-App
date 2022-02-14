import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenge/constants/colors.dart';
import 'package:ui_challenge/menu_items.dart';
import 'package:ui_challenge/model/accreditionScroller.dart';
import 'package:ui_challenge/model/categoryText.dart';
import 'package:ui_challenge/model/eLearningItems.dart';
import 'package:ui_challenge/model/eLearningScroller.dart';
import 'package:ui_challenge/model/headlineItems.dart';
import 'package:ui_challenge/model/headlinedCourseScroller.dart';
import 'package:ui_challenge/model/welcomeText.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Widgets/widgets.dart';
import 'package:carousel_slider/utils.dart';

import 'Widgets/customAppBar.dart';
import 'Widgets/customNavBar.dart';
import 'main.dart';
import 'model/headlinedTopics.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';

  static Route route(){
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomePage(),
    );
  }
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: CustomAppBar('images/globalSkills.png'),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              WelcomeText('Welcome to Global Skills Development'),
              HeadlineCourseScroller(), 
              CategoryText('|', 'E LEARNING COURSES'),
              CarouselELearning(), 
              CategoryText('|', 'ACCREDITION AUTHORITY'),
              AccreditionScroller(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

