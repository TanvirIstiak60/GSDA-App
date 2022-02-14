class AccreditionList {
  String accreditionImage;

  AccreditionList(this.accreditionImage);

  static List<AccreditionList> generatedAccredition(){
    return [
      AccreditionList('images/PECB.png'),
      AccreditionList('images/prince.png'),
      AccreditionList('images/axelos.png'),
      AccreditionList('images/examCenter.png'),
    ];
  }
}