class CardInfoModel {
  final String? name;
  final String? id;
  final String? imagePath;
  final String? credit;
  final String? dueAmount;
  final String? minimum;
  final String? date;
  final String? usedAmount;
  final String? clientId;
  final String? statementDate;
  final String? paymentDate;

  CardInfoModel({
    this.name,
    this.id,
    this.imagePath,
    this.credit,
    this.dueAmount,
    this.minimum,
    this.date,
    this.usedAmount,
    this.clientId,
    this.statementDate,
    this.paymentDate,
  });

  factory CardInfoModel.fromJson(Map<String, dynamic> json) {
    return CardInfoModel(
      name: json['name'] ?? '',
      id: json['id'] ?? '',
      imagePath: json['imagePath'] ?? '',
      credit: json['credit'] ?? '',
      dueAmount: json['dueAmount'] ?? '',
      minimum: json['minimum'] ?? '',
      date: json['date'] ?? '',
      usedAmount: json['usedAmount'] ?? '',
      clientId: json['clientId'] ?? '',
      statementDate: json['statementDate'] ?? '',
      paymentDate: json['paymentDate'] ?? '',
    );
  }
}
