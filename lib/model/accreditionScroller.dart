import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/model/accreditionItems.dart';
import 'package:ui_challenge/model/accreditionList.dart';

class AccreditionScroller extends StatelessWidget {
  const AccreditionScroller({Key? key}) : super(key: key); 

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height/3.7,
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2,
          viewportFraction: 0.8,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
        ),
        items: AccreditionList.accreditedList.map((accreditedImage) => AccreditionItems(accreditedImage)).toList(),
      ),
    );
  }
}