import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.home,
                color: Colors.white,
              ),
              onPressed: (){},
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.shoppingCart,
                color: Colors.white,
              ),
              onPressed: (){},
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.book,
                color: Colors.white,
              ),
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}