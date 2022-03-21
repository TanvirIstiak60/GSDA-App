import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class ClassroomTopics extends Equatable{

  //This is for our Classroom 
  String category;
  String classroomImage;
  String classroomCourseHeadline;
  String classroomCourseDescription;
  String classroomReviewText;
  String classroomReviewBox;
  String classroomCoursePreviousPrice;
  String classroomCourseLatestPrice;

  //This is for our product overview 
  String productOverview;

  //This is for our Overview detailed section
  String quiz;
  String skillLevel;
  String language;
  String duration;
  String totalEnrollments;

  //This is for our Certification
  String certification;

  //This is for our Learning Outcome section
  String learningOutcomes;

  //This is for our course Instructor detail 
  String nameOfInstructor;
  String photoOfInstructor;
  String designationOfInstructor;
  String mobileNumOfInstructor;
  String emailOfInstructor;

  //This is for our course purchase section
  String vat;
  String totalPrice;

  ClassroomTopics(this.category, this.classroomImage, this.classroomCourseHeadline, this.classroomCourseDescription,
  this.classroomReviewText, this.classroomReviewBox, this.classroomCoursePreviousPrice, this.classroomCourseLatestPrice, this.productOverview,
  this.quiz, this.skillLevel, this.language, this.duration, this.totalEnrollments, this.certification, this.learningOutcomes,
  this.nameOfInstructor, this.photoOfInstructor, this.designationOfInstructor, this.mobileNumOfInstructor, this.emailOfInstructor,
  this.vat, this.totalPrice);

  @override
  List<Object?> get props => [
    category,
    classroomImage,
    classroomCourseHeadline,
    classroomCourseDescription,
    classroomReviewText,
    classroomReviewBox,
    classroomCoursePreviousPrice,
    classroomCourseLatestPrice,
    quiz,
    skillLevel, 
    language,
    duration,
    totalEnrollments,
    certification,
    learningOutcomes,
    nameOfInstructor,
    photoOfInstructor,
    designationOfInstructor,
    mobileNumOfInstructor,
    emailOfInstructor,
    vat, 
    totalPrice
  ];

  static List<ClassroomTopics> classroomTopics = [
    ClassroomTopics('Classroom', 'images/prince.png', 'Prince 2 Foundation', 'Project Management', 'Review', 'images/5_star.png', '84000 ৳', '64200 ৳', 
    ' PRINCE2® Practitioner certification is suitable for anyone managing projects. This could be as part of a formal project management function or a role that involves project management as part of day-to-day work. The Practitioner certification aims to confirm that you have sufficient knowledge and understanding to apply and tailor the method in a range of different project environments and scenarios. ',
    'No', 'Advance', 'English', '5:40:32 H', '15', 'YES\n',
    '- Understand how the PRINCE2® principles underpin the PRINCE2® method \n - Understand how the PRINCE2® principles underpin the PRINCE2® method \n - Understand the PRINCE2® themes and how they are applied throughout the project \n -  Understand the PRINCE2® processes and how they are carried out throughout the project \n - Apply the PRINCE2® principles in the context \n - Apply and tailor relevant aspects of PRINCE2® themes in context \n - Apply and tailor relevant aspects of PRINCE2® processes in the context', 'Wahiduzzaman', 'images/Wahiduzzaman.png', 'PRINCE EXPERT', '+01720066947', 'wahid@gmail.com', '8188', '62775'),
    ClassroomTopics('Classroom', 'images/prince2.png', 'Prince 2 Practitio...', 'Project Management', 'Review', 'images/5_star.png', '90000 ৳', '50000 ৳', 
    ' The PRINCE2® Foundation qualification is the first of two PRINCE2® qualifications required to become a Registered PRINCE2® Practitioner. ', 
    'No', 'Advance', 'English', '4:50:27 H', '19', 'YES', '', '', '', '', '', '', '', ''),
    ClassroomTopics('Classroom', 'images/Hadoop.jpg', 'Hadoop Administrat...', 'IT Governance Service', 'Review', 'images/5_star.png', '35000 ৳', '22000 ৳',
    'The HADOOP Administration course content covers all the concepts of HADOOP Clusters right from planning, installing, and configuring through load balancing, tuning, security, and more. This syllabus will also prepare you to handle the real-time tasks dealt with Hadoop Administrators.',
    'Yes', 'Advance', 'English', '6:32:32 H', '60', 'YES', '', '', '', '', '', '', '', ''),
    ClassroomTopics('Classroom', 'images/amazonWeb.png', '(AWS)Amazon Web S...', 'Server Management', 'Review', 'images/5_star.png', '22000 ৳', '16500 ৳', 
    'Amazon Web Services (AWS) is the market leader in IaaS (Infrastructure-as-a-Service) and PaaS (Platform-as-a-Service) for cloud ecosystems, which can be combined to create a scalable cloud application without worrying about delays related to infrastructure provisioning (compute, storage, and network) and management.', 
    'Yes', 'Advance', 'Bengali', '4:15:05 H', '7', 'YES', '', '', '', '', '', '', '', ''), 
    ClassroomTopics('E-Learning', 'images/cobit2019.png', 'COBIT 2019 Foundat...', 'IT Management', 'Review', 'images/5_star.png', '21500 ৳', '5000 ৳', 
    'The course will cover the eight key areas of the COBIT 2019 including framework introduction, principles, governance system and components, governance and management objectives, performance management, designing a tailored governance system, business case, and implementation.', 
    'Yes', 'Advance', 'English', '3:15:05 H', '8', 'YES', '', '', '', '', '', '', '', ''),
    ClassroomTopics('E-Learning', 'images/BigData.jpg', 'Big Data Foundatio...', 'Server Management', 'Review', 'images/5_star.png', '16500 ৳', '5000 ৳',
    'This is a foundation-level course designed to provide you with an understanding of Big Data, the potential sources of Big Data that can be used for solving real business problems and also provide an overview of Data Mining and the tools used in it.',
    'Yes', 'Advance','Bengali', '7:15:27 H', '10', 'YES', '', '', '', '', '', '', '', ''),
    ClassroomTopics('E-Learning', 'images/CISA.jpg', '(CISA) Certified I...', 'Security', 'Review', 'images/5_star.png', '21000 ৳', '5000 ৳', 
    'CISA is an abbreviated form of Certified Information Systems Auditor. CISA certificate is suitable for individuals who have a have an interest in information systems auditing, control, and security. CISA is a professional certification which is provided by the ISACA.',
    'Yes', 'Advance', 'English', '2:40:45 H', '22', 'YES', '', '', '', '', '', '', '', ''),
  ];
}

