import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/Widgets/widgets.dart';
import 'package:ui_challenge/login_page.dart';
import 'package:ui_challenge/model/classroomTopic.dart';
import 'package:ui_challenge/model/purchasePage.dart';

class ProductPage extends StatelessWidget {
  static const String routeName = '/product';

  static Route route({required ClassroomTopics classroomTopics}){
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (context) => ProductPage(classroomTopics),
    );
  }

  final ClassroomTopics classroomTopics;

  // ignore: use_key_in_widget_constructors
  const ProductPage(this.classroomTopics);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        'images/globalSkills.png',
        classroomTopics.classroomCourseHeadline,
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  image: AssetImage(
                    classroomTopics.classroomImage,
                  ),
                ),
              ),
            ),
            Container( 
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(10.0),
              child: Text(
                classroomTopics.classroomCourseHeadline,
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpansionTile(
                collapsedBackgroundColor: Colors.black,
                backgroundColor: Colors.white,
                collapsedIconColor: Colors.white,
                iconColor: Colors.black,
                title: Text(
                  'Course Information',
                  style: GoogleFonts.raleway(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  ListTile(
                    title: Text(
                      classroomTopics.productOverview,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpansionTile(
                collapsedBackgroundColor: Colors.black,
                backgroundColor: Colors.white,
                collapsedIconColor: Colors.white,
                iconColor: Colors.black,
                title: Text(
                  'Overview',
                  style: GoogleFonts.raleway(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.questionCircle,
                                    color: Colors.redAccent,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Quizes',
                                    style: GoogleFonts.raleway(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                classroomTopics.quiz,
                                style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1.0,
                          color: Colors.white10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.chartLine,
                                    color: Colors.redAccent,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Skill Level',
                                    style: GoogleFonts.raleway(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                classroomTopics.skillLevel,
                                style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1.0,
                          color: Colors.white10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.language,
                                    color: Colors.redAccent,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Language',
                                    style: GoogleFonts.raleway(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                classroomTopics.language,
                                style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1.0,
                          color: Colors.white10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.clock,
                                    color: Colors.redAccent,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Duration',
                                    style: GoogleFonts.raleway(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                classroomTopics.duration,
                                style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1.0,
                          color: Colors.white10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  const FaIcon(
                                    FontAwesomeIcons.atom,
                                    color: Colors.redAccent,
                                  ),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    'Total Enrollments',
                                    style: GoogleFonts.raleway(
                                      color: Colors.black,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Text(
                                classroomTopics.totalEnrollments,
                                style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpansionTile(
                collapsedBackgroundColor: Colors.black,
                backgroundColor: Colors.white,
                collapsedIconColor: Colors.white,
                iconColor: Colors.black,
                title: Text(
                  'Certification',
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                children: [
                  ListTile(
                    title: Text(
                      classroomTopics.certification,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  classroomTopics.classroomCourseLatestPrice,
                  style: GoogleFonts.raleway(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow,
                  ),
                  onPressed: (){
                    
                    Navigator.pushNamed(context, '/coursePurchase', arguments: classroomTopics);
                  }, 
                  child: Text(
                    'Booking Now This Course',
                    style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpansionTile(
                collapsedBackgroundColor: Colors.black,
                backgroundColor: Colors.white,
                collapsedIconColor: Colors.white,
                iconColor: Colors.black,
                title: Text(
                  'Learning Outcomes',
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  ListTile(
                    title: Text(
                      classroomTopics.learningOutcomes,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpansionTile(
                collapsedBackgroundColor: Colors.black,
                backgroundColor: Colors.white,
                collapsedIconColor: Colors.white,
                iconColor: Colors.black,
                title: Text(
                  'Instructor',
                  style: GoogleFonts.raleway(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height/3.5,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage(
                                    classroomTopics.photoOfInstructor,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    classroomTopics.nameOfInstructor,
                                    style: GoogleFonts.raleway(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0),
                              child: Text(
                                classroomTopics.designationOfInstructor,
                                style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: 17.5,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
                              child: ElevatedButton(
                                onPressed: (){
                                  Navigator.pushNamed(context, '/instructor', arguments: classroomTopics);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.yellow,
                                ),
                                child: Text(
                                  'View Profile',
                                  style: GoogleFonts.raleway(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}