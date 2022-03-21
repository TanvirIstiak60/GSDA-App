import 'package:flutter/material.dart';
import 'package:ui_challenge/model/accreditionScroller.dart';
import 'package:ui_challenge/model/categoryText.dart';
import 'package:ui_challenge/model/classRoomScroller.dart';
import 'package:ui_challenge/model/eLearningScroller.dart';
import 'package:ui_challenge/model/headlinedCourseScroller.dart';
import 'package:ui_challenge/model/welcomeText.dart';
import 'Widgets/widgets.dart';



class HomePage extends StatelessWidget {
  static const String routeName = '/';

  static Route route(){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName), 
      builder: (_) => const HomePage(),
    );
  }

  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: const CustomAppBar('images/globalSkills.png', 'HOME'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            WelcomeText('We Provide'),
            const HeadlineCourseScroller(),
            const SizedBox(
              height: 40.0,
            ), 
            CategoryText('|', 'E LEARNING COURSES'),
            const CarouselELearning(), 
            const SizedBox(
              height: 40,
            ),
            CategoryText('|', 'CLASSROOM COURSES'),
            const ClassScroller(),
            const SizedBox(
              height: 40,
            ),
            CategoryText('|', 'ACCREDITION AUTHORITY'),
            AccreditionScroller(),
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}

