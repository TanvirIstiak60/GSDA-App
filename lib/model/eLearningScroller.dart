import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/model/eLearningCourses.dart';
import 'package:ui_challenge/model/eLearningItems.dart';

class CarouselELearning extends StatelessWidget {
  const CarouselELearning({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: 310.0,
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.3,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
          ),
          items: ELearningCourse.eLearningCourse.map((eLearningItems) => ELearningItems(eLearningItems)).toList(),
        ),
      ),
    );
  }
}