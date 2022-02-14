import 'package:flutter/material.dart';

class CategoryText extends StatelessWidget {
  
  String startingText;
  String categoryText;
  CategoryText(this.startingText, this.categoryText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        children: [
          Text(
            startingText,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.yellow,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: 10.0,),
          Text(
            categoryText,
            style: TextStyle(
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