import 'package:flutter/material.dart';
import 'package:ui_challenge/Widgets/customAppBar.dart';
import 'package:ui_challenge/Widgets/widgets.dart';
import 'package:ui_challenge/model/classroomTopic.dart';
import 'package:ui_challenge/model/headlinedTopics.dart';
import 'package:ui_challenge/model/product_card.dart';

class ClassroomPage extends StatefulWidget {
  static const String routeName = '/classroom';

  static Route route({required HeadlinedTopics headlinedTopic}){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName), 
      builder: (context) => ClassroomPage(headlinedTopic),
    );
  }

  final HeadlinedTopics headlinedTopic;
  // ignore: use_key_in_widget_constructors
  const ClassroomPage(this.headlinedTopic);

  @override
  State<ClassroomPage> createState() => _ClassroomPageState();
}

class _ClassroomPageState extends State<ClassroomPage> {
  @override
  Widget build(BuildContext context) {

    //Declaring MediaQuery for advance UI design 
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    final List<ClassroomTopics> catagoryProducts = ClassroomTopics.classroomTopics.
    where((classroomTopics) => classroomTopics.category == widget.headlinedTopic.textHeadline).toList();

    return Scaffold(
      appBar: CustomAppBar('images/globalSkills.png', widget.headlinedTopic.textHeadline),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: height,
            width: width,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: catagoryProducts.length,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ProductCard(
                    catagoryProducts[index],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

