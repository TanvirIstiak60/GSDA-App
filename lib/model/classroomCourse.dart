import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ClassroomCourse extends Equatable{
  String classroomImage;
  String classroomHeadlineText;
  String classroomShortText;
  String classroomReviewText;
  String classroomReviewBox;
  String classroomPreviousPrice;
  String classrooomLatestPrice;

  ClassroomCourse(this.classroomImage, this.classroomHeadlineText, this.classroomShortText, this.classroomReviewText,
  this.classroomReviewBox, this.classroomPreviousPrice, this.classrooomLatestPrice);

  @override
  List<Object?> get props => throw UnimplementedError();

  static List<ClassroomCourse> classroomCourse = [
    ClassroomCourse('images/CISA.jpg', '(CISA) Certified', 'Security', 'Review', 'images/5_star.png', '27500', '9999'),
    ClassroomCourse('images/Hadoop.jpg', 'HADOOP Administrat..', 'IT Governance Service', 'Review', 'images/5_star.png', '35000', '22000'),
    ClassroomCourse('images/PECB.jpg', 'ISO/IEC 27001 Lead..', 'IT Governance service', 'Review', 'images/5_star.png', '35000', '25000'),
    ClassroomCourse('images/BigData.jpg', 'Big Data Foundation', 'Server Management', 'Review', 'images/5_star.png', '22500', '16500'),
  ];
}