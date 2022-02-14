import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ELearningCourse extends Equatable{
  String eLearningImage;
  String eLearningTitle;
  String eLearningShortTitle;
  String eLearningReviewText;
  String eLearningReviewBox;
  String eLearningPreviousPrice;
  String eLearningLatestPrice;

  ELearningCourse(this.eLearningImage, this.eLearningTitle, this.eLearningShortTitle, 
  this.eLearningReviewText, this.eLearningReviewBox, this.eLearningPreviousPrice, 
  this.eLearningLatestPrice);
  
  @override
  List<Object?> get props => [eLearningImage, eLearningTitle, eLearningShortTitle, eLearningReviewText,
  eLearningReviewBox, eLearningPreviousPrice, eLearningLatestPrice];

  static List<ELearningCourse> eLearningCourse = [
    ELearningCourse('images/cobit2019.png', 'Cobit 2019 Foundation', 'IT Management', 
    'Review', 'images/5_star.png,', '21500', '4999'),
    ELearningCourse('images/amazonWeb.png', 'Amazon Web Service', 'Cloud', 'Review',
    'images/5_star.png', '16500', '999'),
    ELearningCourse('images/prince2.png', 'PRINCE 2 Foundation', 'Project Management', 
    'Review', 'images/5_star.png', '97000', '51860'),
    ELearningCourse('images/cloudSecurity.png', 'Certified Cloud Security', 'Security',
    'Review', 'images/5_star.png', '35000', '999'),
    ];
  
}