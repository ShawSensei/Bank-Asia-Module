class CardInfoResModel {
  final String? resCode;
  final String? resMessage;
  final String? accountNo;
  final String? lastTxnTime;
  final String? holdAmount;
  final String? balance;
  final String? currencyID;
  final String? resCodeDue;
  final String? resMesDue;
  final String? minPaymentBDT;
  final String? minPaymentUSD;
  final String? paymentDueDate;
  final String? resCodeOutStanding;
  final String? resMesOutStanding;
  final String? cardNumber;
  final String? cardStatus;
  final String? cardState;
  final String? outstandingBDT;
  final String? outstandingUSD;

  CardInfoResModel({
    this.resCode,
    this.resMessage,
    this.accountNo,
    this.lastTxnTime,
    this.holdAmount,
    this.balance,
    this.currencyID,
    this.resCodeDue,
    this.resMesDue,
    this.minPaymentBDT,
    this.minPaymentUSD,
    this.paymentDueDate,
    this.resCodeOutStanding,
    this.resMesOutStanding,
    this.cardNumber,
    this.cardStatus,
    this.cardState,
    this.outstandingBDT,
    this.outstandingUSD,
  });

  factory CardInfoResModel.fromJsonObject(Map<String, dynamic> jsonObject) {
    return CardInfoResModel(
      resCode: jsonObject['resCode'],
      resMessage: jsonObject['resMessage'],
      accountNo: jsonObject['accountNo'],
      lastTxnTime: jsonObject['lastTxnTime'],
      holdAmount: jsonObject['holdAmount'],
      balance: jsonObject['balance'],
      currencyID: jsonObject['currencyID'],
      resCodeDue: jsonObject['resCodeDue'],
      resMesDue: jsonObject['resMesDue'],
      minPaymentBDT: jsonObject['minPaymentBDT'],
      minPaymentUSD: jsonObject['minPaymentUSD'],
      paymentDueDate: jsonObject['paymentDueDate'],
      resCodeOutStanding: jsonObject['resCodeOutStanding'],
      resMesOutStanding: jsonObject['resMesOutStanding'],
      cardNumber: jsonObject['cardNumber'],
      cardStatus: jsonObject['cardStatus'],
      cardState: jsonObject['cardState'],
      outstandingBDT: jsonObject['outstandingBDT'],
      outstandingUSD: jsonObject['outstandingUSD'],
    );
  }

  static List<CardInfoResModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList
        .map((item) => CardInfoResModel.fromJsonObject(item))
        .toList();
  }
}
