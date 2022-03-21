// ignore: file_names
import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class AccreditionList extends Equatable{
  String accreditedImage;

  AccreditionList(this.accreditedImage);

  @override
  List<Object?> get props => throw UnimplementedError();

  static List<AccreditionList> accreditedList = [
    AccreditionList('images/PECB.png'),
    AccreditionList('images/PECB.jpg'),
    AccreditionList('images/prince.png'),
    AccreditionList('images/prince2.png'),
  ];
}