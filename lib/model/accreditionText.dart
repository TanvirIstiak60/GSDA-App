import 'package:flutter/material.dart';

class AccreditionText extends StatelessWidget {
  String accredtionTextLine;
  String accreditionText;
  AccreditionText(this.accredtionTextLine,this.accreditionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text(
            accredtionTextLine,
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            accreditionText,
            style: TextStyle(
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