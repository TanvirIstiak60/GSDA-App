import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/home_page.dart';
import 'package:ui_challenge/login_page.dart';
import 'package:ui_challenge/menu_items.dart';
import 'package:ui_challenge/model/menu_item.dart';
import 'package:ui_challenge/pages/signUp.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  final String ourLogo;
  final String ourText;

  // ignore: use_key_in_widget_constructors
  const CustomAppBar(this.ourLogo, this.ourText);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.black87,
      leading: Image.asset(
        ourLogo,
        height: 52.0,
        width: 52.0,
      ),
      title: Text(
        ourText,
        style: GoogleFonts.raleway(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.search),
          onPressed: () {
          },
        ),
        PopupMenuButton<MenuItem> (
          onSelected: (item) => onSelected(context, item),
          itemBuilder: (context) => [
            ...MenuItems.itemFirst.map(buildItem).toList(),
          ],
        ),
      ],
    );
  }

  PopupMenuItem<MenuItem> buildItem (MenuItem item) => PopupMenuItem(
    value: item,
    child: Text(item.text),
  );

  void onSelected(BuildContext context, MenuItem item){
    switch(item){
      case MenuItems.login: 
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => UserLoginPage()),
        );
      break;

      case MenuItems.signUp:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const SignUp()),
        );
      break;

      case MenuItems.home:
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const HomePage()),
        );
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}

