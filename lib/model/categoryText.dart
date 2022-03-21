import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CategoryText extends StatelessWidget {
  
  String startingText;
  String categoryText;
  CategoryText(this.startingText, this.categoryText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text(
            startingText,
            style: GoogleFonts.raleway(
              fontSize: 20.0,
              color: Colors.yellow,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(width: 10.0,),
          Text(
            categoryText,
            style: GoogleFonts.raleway(
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}