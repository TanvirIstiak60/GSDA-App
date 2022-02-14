import 'package:ui_challenge/model/menu_item.dart';

class MenuItems{
  static const List<MenuItem> itemFirst = [
    login,
    home,
    pages,
    eLearningCourses,
    classroomCourses,
    blogs,
    heroes
  ];

  static const login = MenuItem(
    text: 'LOGIN',
  );

  static const home = MenuItem(
    text: 'HOME',
  );

  static const pages = MenuItem(
    text: 'PAGES',
  );

  static const eLearningCourses = MenuItem(
    text: 'E-LEARNING COURSES',
  );

  static const classroomCourses = MenuItem(
    text: 'CLASSROOM COURSES',
  );

  static const blogs = MenuItem(
    text: 'BLOGS',
  );

  static const heroes = MenuItem(
    text: 'HEROES',
  );
}