import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeText extends StatelessWidget {
  String welcomeText;
  WelcomeText(this.welcomeText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Text(
        welcomeText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Ubuntu',
        ),
      ),
    );
  }
}