import 'package:flutter/material.dart';
import 'package:ui_challenge/model/accreditionItems.dart';
import 'package:ui_challenge/model/accreditionList.dart';

class AccreditionScroller extends StatelessWidget {
  final accreditionList = AccreditionList.generatedAccredition();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 205.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: accreditionList.length,
              itemBuilder: (context, index) => 
              AccreditionItems(accreditionList[index]),
              separatorBuilder:(context, index) => 
              SizedBox(width: 15.0,),
            ),
          ),
        ],
      ),
    );
  }
}