import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Icon(
            Icons.verified_user,
            color: Colors.green,
            size: 150.0,
          ),
        ),
      ),
    );
  }
}