import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0.0,
      color: Colors.black,
      child: SizedBox(
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.home,
                color: Colors.white,
              ),
              onPressed: (){},
            ),
            IconButton(
              icon: const FaIcon(
                FontAwesomeIcons.shoppingCart,
                color: Colors.white,
              ),
              onPressed: (){},
            ),
            IconButton(
              icon: const FaIcon(
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