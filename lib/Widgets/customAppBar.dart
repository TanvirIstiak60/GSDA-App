import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui_challenge/login_page.dart';
import 'package:ui_challenge/menu_items.dart';
import 'package:ui_challenge/model/menu_item.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{
  final String ourLogo;

  CustomAppBar(this.ourLogo);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      title: Image.asset(
        ourLogo,
        height: 52.0,
        width: 52.0,
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
    child: Text(item.text),
  );

  void onSelected(BuildContext context, MenuItem item){
    switch(item){
      case MenuItems.login: 
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => UserLoginPage()),
        );
        break;
    }
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}

