import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/Widgets/ourCarouselSlider.dart';
import 'package:ui_challenge/model/headlinedTopics.dart';

class HeadlineCourseScroller extends StatelessWidget {
  const HeadlineCourseScroller({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310.0,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.3,
          viewportFraction: 0.7,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: HeadlinedTopics.headlineTopics.map((headLinedTopic) => CarouselCard(headLinedTopic)).toList(),
      ),
    );
  }
}

