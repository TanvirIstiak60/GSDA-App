import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/model/classroomCourse.dart';
import 'package:ui_challenge/model/classroomItems.dart';

class ClassScroller extends StatelessWidget {
  const ClassScroller({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //Declaring Media Query for advanced responsive UI design
    var classCarouselHeight = MediaQuery.of(context).size.height;
    var classCarouselWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: classCarouselHeight/2.2,
      width: classCarouselWidth,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.1,
          viewportFraction: 0.8,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: ClassroomCourse.classroomCourse.map((classroomItems) => ClassroomItems(classroomItems)).toList(),
      ),
    );
  }
}