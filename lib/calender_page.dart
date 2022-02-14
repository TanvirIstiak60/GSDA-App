import 'package:flutter/material.dart';

class CalenderPage extends StatelessWidget {
  const CalenderPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Icon(
            Icons.calendar_view_day_rounded,
            color: Colors.green,
            size: 150.0,
          ),
        ),
      ),
    );
  }
}