import 'package:flutter/material.dart';
import 'package:ui_challenge/model/accreditionList.dart';

class AccreditionItems extends StatelessWidget {
  final AccreditionList accreditedImage;
  // ignore: use_key_in_widget_constructors
  const AccreditionItems(this.accreditedImage);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Image(
        image: AssetImage(
          accreditedImage.accreditedImage,
        ),
      ),
    );
  }
}