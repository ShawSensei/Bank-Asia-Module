class CreditCardListResModel {
  final String? resCode;
  final String? resMessage;
  final String? actNum;
  final String? cardNo;
  final String? cardTitle;
  final String? cardType;
  final String? expDate;
  final String? imgPath;

  CreditCardListResModel(
      {this.resCode,
      this.resMessage,
      this.actNum,
      this.cardNo,
      this.cardTitle,
      this.cardType,
      this.expDate,
      this.imgPath});

  // @override
  // String toString() {
  //   return "CreditCardSourceCardListDataM(resCode: $resCode, resMessage: $resMessage, actNum: $actNum, cardNo: $cardNo, cardTitle: $cardTitle, cardType: $cardType, expDate: $expDate, imgPath: $imgPath)";
  // }

  factory CreditCardListResModel.fromJsonObject(Map<String, dynamic> jsonObject) {
    return CreditCardListResModel(
      resCode: jsonObject['resCode'],
      resMessage: jsonObject['resMessage'],
      actNum: jsonObject['actNum'],
      cardNo: jsonObject['cardNo'],
      cardTitle: jsonObject['cardTitle'],
      cardType: jsonObject['cardType'],
      expDate: jsonObject['expDate'],
      imgPath: jsonObject['imgPath'],
    );
  }

  static List<CreditCardListResModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((item) => CreditCardListResModel.fromJsonObject(item)).toList();
  }
}
