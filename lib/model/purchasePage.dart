import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/Widgets/widgets.dart';
import 'package:ui_challenge/model/classroomTopic.dart';

class CoursePurchase extends StatelessWidget {
  static const String routeName = '/coursePurchase';

  static Route route({required ClassroomTopics classroomTopics}){
   return MaterialPageRoute(
     settings: const RouteSettings(name: routeName),
     builder: (context) => CoursePurchase(classroomTopics),
     );
  }

  final ClassroomTopics classroomTopics;

  // ignore: use_key_in_widget_constructors
  const CoursePurchase(this.classroomTopics);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        'images/globalSkills.png',
        'Course Purchase',
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage(
                  classroomTopics.classroomImage,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height/32,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Text(
                    classroomTopics.classroomCourseHeadline,
                    style: GoogleFonts.raleway(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
              child: Container(
                height: MediaQuery.of(context).size.height/3.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Payment detail',
                          style: GoogleFonts.raleway(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            'Price',
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Course Price',
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            classroomTopics.classroomCourseLatestPrice,
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'VAT(15%)',
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            '8000 ৳',
                            style: GoogleFonts.raleway(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1.5,
                        color: Colors.white,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'TOTAL',
                            style: GoogleFonts.raleway(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            '72000 ৳',
                            style: GoogleFonts.raleway(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Discount code\nEnter your coupon code if you have one',
                style: GoogleFonts.raleway(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your coupon code here',
                  hintStyle: GoogleFonts.raleway(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    'APPLY COUPON',
                    style: GoogleFonts.raleway(
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow[600],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: (){}, 
                  child: Text(
                    'Proceed to Payment',
                    style: GoogleFonts.raleway(
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellow[600],
                  ),
                ),
              ),
            ),
          ]
        ),
      ),
    );
  }
}