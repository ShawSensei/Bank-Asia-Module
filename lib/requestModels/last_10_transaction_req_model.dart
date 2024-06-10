class Last10TransactionReqModel {
  late String authorization;
  late String fullPan;
  late String expireDate;
  late String cardType;
  late String mailId;
  late String sessionId;
  late String comments;

  Last10TransactionReqModel({
    this.authorization = '',
    this.fullPan = '',
    this.expireDate = '',
    this.cardType = '',
    this.mailId = '',
    this.sessionId = '',
    this.comments = '',
  });

  Map<String, String> toMap() {
    return {
      'authorization': authorization,
      'fullPan': fullPan,
      'expaireDate': expireDate,
      'cardType': cardType,
      'mailId': mailId,
      'sessionId': sessionId,
      'comments': comments,
    };
  }
}
