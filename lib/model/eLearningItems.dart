import 'package:flutter/material.dart';
import 'package:ui_challenge/constants/colors.dart';
import 'package:ui_challenge/model/eLearningCourses.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ELearningItems extends StatefulWidget {
  final ELearningCourse eLearningItems;
  // ignore: use_key_in_widget_constructors
  const ELearningItems(this.eLearningItems);

  @override
  State<ELearningItems> createState() => _ELearningItemsState();
}

class _ELearningItemsState extends State<ELearningItems> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {

    //Declaring Media query for a responsive design
    var eLearningHeight = MediaQuery.of(context).size.height;
    var eLearningWidth = MediaQuery.of(context).size.width;

    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Container(
            height: eLearningHeight,
            width: eLearningWidth,
            decoration: BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),                      
                    ),
                    child: Image(
                      image: AssetImage(widget.eLearningItems.eLearningImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        Text(
                          widget.eLearningItems.eLearningTitle,
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 8.0,
                          ),
                        ),
                        Text(
                          widget.eLearningItems.eLearningShortTitle,
                          style: const TextStyle(
                            fontSize: 6.0,
                            color: Colors.black,
                          ),
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 1.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.eLearningItems.eLearningReviewText,
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 15,
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
                      ),
                      const VerticalDivider(
                        color: Colors.grey,
                        thickness: 1.0,
                      ),
                      Container(
                        padding: const EdgeInsets.only(right: 3.0),
                        width: 120,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              widget.eLearningItems.eLearningPreviousPrice,
                              style: const TextStyle(
                                fontSize: 13.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              widget.eLearningItems.eLearningLatestPrice,
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}