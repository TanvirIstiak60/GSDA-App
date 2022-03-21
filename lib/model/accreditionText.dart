import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AccreditionText extends StatelessWidget {
  String accredtionTextLine;
  String accreditionText;
  AccreditionText(this.accredtionTextLine,this.accreditionText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Text(
            accredtionTextLine,
            style: GoogleFonts.raleway(
              color: Colors.yellow,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Text(
            accreditionText,
            style: GoogleFonts.raleway(
              color: Colors.black,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}