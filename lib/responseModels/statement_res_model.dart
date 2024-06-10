class StatementResModel {
  final String? responseCode;
  final String? termSICName;
  final String? tranCode;
  final String? amount;
  final String? termLocation;
  final String? currencyAcct;
  final String? termCountryName;
  final String? approvalCode;
  final String? amountAcct;
  final String? particulars;
  final String? termName;
  final String? currency;
  final String? termCity;
  final String? tranNumber;
  final String? pAN;
  final String? tranTime;
  final String? termOwner;
  final String? resCodeLStatement;
  final String? resMesLStatement;
  final String? creditLimitBDT;
  final String? creditLimitUSD;
  final String? minPaymentBDTS;
  final String? minPaymentUSDS;
  final String? currentOutstandingBDT;
  final String? currentOutstandingUSD;
  final String? nextStatementDate;
  final String? paymentDueDate;
  final String? url;

  StatementResModel({
    this.responseCode,
    this.termSICName,
    this.tranCode,
    this.amount,
    this.termLocation,
    this.currencyAcct,
    this.termCountryName,
    this.approvalCode,
    this.amountAcct,
    this.particulars,
    this.termName,
    this.currency,
    this.termCity,
    this.tranNumber,
    this.pAN,
    this.tranTime,
    this.termOwner,
    this.resCodeLStatement,
    this.resMesLStatement,
    this.creditLimitBDT,
    this.creditLimitUSD,
    this.minPaymentBDTS,
    this.minPaymentUSDS,
    this.currentOutstandingBDT,
    this.currentOutstandingUSD,
    this.nextStatementDate,
    this.paymentDueDate,
    this.url,
  });

  factory StatementResModel.fromJsonObject(Map<String, dynamic> json) {
    return StatementResModel(
      responseCode: json['responseCode'],
      termSICName: json['termSICName'],
      tranCode: json['tranCode'],
      amount: json['amount'],
      termLocation: json['termLocation'],
      currencyAcct: json['currencyAcct'],
      termCountryName: json['termCountryName'],
      approvalCode: json['approvalCode'],
      amountAcct: json['amountAcct'],
      particulars: json['particulars'],
      termName: json['termName'],
      currency: json['currency'],
      termCity: json['termCity'],
      tranNumber: json['tranNumber'],
      pAN: json['pAN'],
      tranTime: json['tranTime'],
      termOwner: json['termOwner'],
      resCodeLStatement: json['resCodeLStatement'],
      resMesLStatement: json['resMesLStatement'],
      creditLimitBDT: json['creditLimitBDT'],
      creditLimitUSD: json['creditLimitUSD'],
      minPaymentBDTS: json['minPaymentBDTS'],
      minPaymentUSDS: json['minPaymentUSDS'],
      currentOutstandingBDT: json['currentOutstandingBDT'],
      currentOutstandingUSD: json['currentOutstandingUSD'],
      nextStatementDate: json['nextStatementDate'],
      paymentDueDate: json['paymentDueDate'],
      url: json['url'],
    );
  }

  static List<StatementResModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((item) => StatementResModel.fromJsonObject(item)).toList();
  }

  @override
  String toString() {
    return "StatementResModel(responseCode: $responseCode, termSICName: $termSICName, tranCode: $tranCode, amount: $amount, termLocation: $termLocation, currencyAcct: $currencyAcct, termCountryName: $termCountryName, approvalCode: $approvalCode, amountAcct: $amountAcct, particulars: $particulars, termName: $termName, currency: $currency, termCity: $termCity, tranNumber: $tranNumber, pAN: $pAN, tranTime: $tranTime, termOwner: $termOwner, resCodeLStatement: $resCodeLStatement, resMesLStatement: $resMesLStatement, creditLimitBDT: $creditLimitBDT, creditLimitUSD: $creditLimitUSD, minPaymentBDTS: $minPaymentBDTS, minPaymentUSDS: $minPaymentUSDS, currentOutstandingBDT: $currentOutstandingBDT, currentOutstandingUSD: $currentOutstandingUSD, nextStatementDate: $nextStatementDate, paymentDueDate: $paymentDueDate, url: $url)";
  }
}
