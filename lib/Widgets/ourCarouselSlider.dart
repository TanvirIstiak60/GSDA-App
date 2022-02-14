import 'package:flutter/material.dart';
import 'package:ui_challenge/model/headlinedTopics.dart';

class CarouselCard extends StatelessWidget {
  final HeadlinedTopics headlinedTopic;
  // ignore: use_key_in_widget_constructors
  const CarouselCard(this.headlinedTopic);

  @override
  Widget build(BuildContext context) {
        return Container(
        margin: EdgeInsets.symmetric(
          horizontal: 5.0,
          vertical: 50.0,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          child: Stack(
            children: <Widget>[
              Image.asset(headlinedTopic.imageHeadline, fit: BoxFit.cover, width: 1000.0),
              Positioned(
                bottom: 0.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 20.0),
                      child: Text(
                         headlinedTopic.textHeadline,
                         style: TextStyle(
                         color: Colors.white,
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            );  
  }
}