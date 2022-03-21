import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'classroomTopic.dart';

// ignore: must_be_immutable
class ProductCard extends StatefulWidget {
  final ClassroomTopics classroomTopics;

  const ProductCard(this.classroomTopics, {Key? key}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  set rating(double rating) {}

  @override
  Widget build(BuildContext context) {
    var classRoomPageHeight = MediaQuery.of(context).size.height;
    var classRoomPageWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, '/product', arguments: widget.classroomTopics);
      },
      child: Container(
          height: classRoomPageHeight/2,
          width: classRoomPageWidth,
          color: Colors.grey,
          child: Stack(
            children: [
              Column(
                children: [
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    left: 0.0,
                    bottom: 160,
                    child: ClipRRect(
                      child: Image(
                        image: AssetImage(
                          widget.classroomTopics.classroomImage,                  
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          widget.classroomTopics.classroomCourseHeadline,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          widget.classroomTopics.classroomCourseDescription,
                          style: GoogleFonts.raleway(
                            color: Colors.black,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1.5,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text(
                              widget.classroomTopics.classroomReviewText,
                              style: GoogleFonts.raleway(
                                color: const Color.fromARGB(255, 160, 42, 42),
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RatingBar.builder(
                            minRating: 0,
                            itemSize: 25.0,
                            itemBuilder: (context, _) =>
                            const Icon(
                              Icons.star,
                              color: Colors.red,
                            ),
                            updateOnDrag: true,
                            onRatingUpdate: (rating) => setState(() {
                              this.rating = rating;
                            }),
                          ),
                          ],
                        ),
                      ),
                      const VerticalDivider(
                        thickness: 2,
                        color: Color.fromARGB(255, 170, 61, 61),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Text(
                              widget.classroomTopics.classroomCoursePreviousPrice,
                              style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontSize: 18.0,
                              ),
                            ),
                            Text(
                              widget.classroomTopics.classroomCourseLatestPrice,
                              style: GoogleFonts.raleway(
                                color: const Color.fromARGB(255, 160, 42, 42),
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}