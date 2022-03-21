import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/Widgets/ourCarouselSlider.dart';
import 'package:ui_challenge/model/headlinedTopics.dart';

class HeadlineCourseScroller extends StatelessWidget {
  const HeadlineCourseScroller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //MediaQuery for responsiveness
    var headLinedScrollerHeight = MediaQuery.of(context).size.height;
    var headLinedScrollerWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      height: headLinedScrollerHeight/2.7,
      width: headLinedScrollerWidth,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1,
          viewportFraction: 0.8,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: HeadlinedTopics.headlineTopics.map((headLinedTopic) => CarouselCard(headLinedTopic)).toList(),
      ),
    );
  }
}

