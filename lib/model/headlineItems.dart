// ignore_for_file: use_key_in_widget_constructors

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui_challenge/constants/colors.dart';
import 'package:ui_challenge/model/headlinedTopics.dart';


class HeadlineItems extends StatelessWidget {
  final HeadlinedTopics headlinedItems;
  const HeadlineItems(this.headlinedItems);

  @override
  Widget build(BuildContext context) {

    //Declaring media query Class for a responsive design feature 
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: const EdgeInsets.only(top: 25.0),
      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: CarouselSlider(
        options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: true,
        enableInfiniteScroll: false,
        initialPage: 2,
        autoPlay: true,
      ),
      items: <Widget>[ Stack(
          children: [
            Container(
              height: screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: Image(
                        image: AssetImage(headlinedItems.imageHeadline,),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: (){},
                        child: Text(
                          headlinedItems.textHeadline,
                          style: TextStyle(
                            color: Colors.red[900],
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.amberAccent,
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          )
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: 105.0,
                right: 125,
                child: Icon(
                headlinedItems.headlineIcon,
                color: Colors.black87,
                size: 50,
              ),
            ),
            const SizedBox(height: 20,),            
          ], 
        ),
      ]
      ),
    );
  }
}




