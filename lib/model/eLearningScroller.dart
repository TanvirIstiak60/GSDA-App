import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/model/eLearningCourses.dart';
import 'package:ui_challenge/model/eLearningItems.dart';

class CarouselELearning extends StatelessWidget {
  const CarouselELearning({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    //Declaring Media Query for Responsive UI
    var eCarouselHeight = MediaQuery.of(context).size.height;
    var eCarouselWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: eCarouselHeight/2.2,
      width: eCarouselWidth,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.1,
          viewportFraction: 0.8,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: ELearningCourse.eLearningCourse.map((eLearningItems) => ELearningItems(eLearningItems)).toList(),
      ),
    );
  }
}