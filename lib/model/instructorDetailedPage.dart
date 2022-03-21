import 'package:flutter/material.dart';
import 'package:ui_challenge/Widgets/customAppBar.dart';
import 'package:ui_challenge/model/classroomTopic.dart';

class InstructorDetails extends StatelessWidget {

  //defining our route for this page
  static const String routeName = '/instructor';

  static Route route({required ClassroomTopics classroomTopics}){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => InstructorDetails(classroomTopics),
    );
  }

  final ClassroomTopics classroomTopics;

  const InstructorDetails(this.classroomTopics);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          'images/globalSkills.png',
          'Instructor Detail',
        ),
      ),
    );
  }
}