class Last10TransactionResModel {
  final String? responseCode;
  final String? responseMessage;
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

  Last10TransactionResModel({
    this.responseCode,
    this.responseMessage,
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

  factory Last10TransactionResModel.fromJsonObject(Map<String, dynamic> json) {
    return Last10TransactionResModel(
      responseCode: json['responseCode'],
      responseMessage: json['responseMessage'],
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

  static List<Last10TransactionResModel> fromJsonList(List<dynamic> jsonList) {
    return jsonList.map((item) => Last10TransactionResModel.fromJsonObject(item)).toList();
  }

  @override
  String toString() {
    return "Last10TransactionResModel(responseCode: $responseCode, responseMessage: $responseMessage, resCodeLStatement: $resCodeLStatement, resMesLStatement: $resMesLStatement, creditLimitBDT: $creditLimitBDT, creditLimitUSD: $creditLimitUSD, minPaymentBDTS: $minPaymentBDTS, minPaymentUSDS: $minPaymentUSDS, currentOutstandingBDT: $currentOutstandingBDT, currentOutstandingUSD: $currentOutstandingUSD, nextStatementDate: $nextStatementDate, paymentDueDate: $paymentDueDate, url: $url)";
  }
}
