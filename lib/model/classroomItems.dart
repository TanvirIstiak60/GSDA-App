import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/constants/colors.dart';
import 'package:ui_challenge/model/classroomCourse.dart';

// ignore: must_be_immutable
class ClassroomItems extends StatefulWidget {
  final ClassroomCourse classroomItems;
  const ClassroomItems(this.classroomItems, {Key? key}) : super(key: key);

  @override
  State<ClassroomItems> createState() => _ClassroomItemsState();
}

class _ClassroomItemsState extends State<ClassroomItems> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ClipRRect(
                child: Image(
                  image: AssetImage(
                    widget.classroomItems.classroomImage,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Text(
                      widget.classroomItems.classroomHeadlineText,
                      style: GoogleFonts.raleway(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      widget.classroomItems.classroomShortText,
                      style: const TextStyle(
                        fontSize: 9.0,
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.black,
                    thickness: 0.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            widget.classroomItems.classroomReviewText,
                            style: GoogleFonts.raleway(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          RatingBar.builder(
                            minRating: 0,
                            itemSize: 20.0,
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
                      const VerticalDivider(
                        color: Colors.black,
                        thickness: 1.0,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            widget.classroomItems.classroomPreviousPrice,
                            style: const TextStyle(
                              fontSize: 10.0,
                            ),
                          ),
                          Text(
                            widget.classroomItems.classrooomLatestPrice,
                            style: GoogleFonts.raleway(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0
                            ),
                          ),
                        ],
                      ),
                    ],
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