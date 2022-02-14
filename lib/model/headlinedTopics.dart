import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeadlinedTopics extends Equatable{
  String imageHeadline;
  IconData headlineIcon;
  String textHeadline;

  HeadlinedTopics(this.imageHeadline, this.headlineIcon, this.textHeadline);

  @override
  // TODO: implement props
  List<Object?> get props => [imageHeadline, headlineIcon, textHeadline];

  static List<HeadlinedTopics> headlineTopics = [
    HeadlinedTopics('images/e-learning.jpg', FontAwesomeIcons.graduationCap, 'E-LEARNING'),
    HeadlinedTopics('images/classroom.jpg', FontAwesomeIcons.graduationCap, 'CLASSROOM'),
    HeadlinedTopics('images/mocktest.jpg', FontAwesomeIcons.bookReader, 'PRACTICE EXAM'),
  ];
}