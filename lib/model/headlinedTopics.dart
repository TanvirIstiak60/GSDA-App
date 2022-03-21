import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class HeadlinedTopics extends Equatable{
  String imageHeadline;
  IconData headlineIcon;
  String textHeadline;

  HeadlinedTopics(this.imageHeadline, this.headlineIcon, this.textHeadline);

  @override
  List<Object?> get props => [imageHeadline, headlineIcon, textHeadline];

  static List<HeadlinedTopics> headlineTopics = [
    HeadlinedTopics('images/E-learning.gif', FontAwesomeIcons.graduationCap, 'E-Learning'),
    HeadlinedTopics('images/Class-Room-GSDA.gif', FontAwesomeIcons.graduationCap, 'Classroom'),
    HeadlinedTopics('images/mocktest.jpg', FontAwesomeIcons.bookReader, 'PRACTICE EXAM'),
  ];
}