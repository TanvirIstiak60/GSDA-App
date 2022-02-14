import 'package:flutter/material.dart';
import 'package:ui_challenge/model/accreditionList.dart';

class AccreditionItems extends StatelessWidget {
  final AccreditionList accreditionImages;
  AccreditionItems(this.accreditionImages);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15.0, right: 15.0),
      color: Colors.white,
      padding: EdgeInsets.all(15.0),
      child: Container(
        width: 270,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20.0),
          ),
          child: Image(
            image: AssetImage(accreditionImages.accreditionImage),
          ),
        ),
      ), 
    );
  }
}