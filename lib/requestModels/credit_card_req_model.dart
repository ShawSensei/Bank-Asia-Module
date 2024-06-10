class CreditCardReqModel {
  late String authorization;
  late String terminalID;
  late String ipimeNO;
  late String mailId;
  late String sessionId;
  late String sysDate;

  CreditCardReqModel({
    this.authorization = '',
    this.terminalID = '',
    this.ipimeNO = '',
    this.mailId = '',
    this.sessionId = '',
    this.sysDate = '',
  });

  Map<String, String> toMap() {
    return {
      'authorization': authorization,
      'terminalID': terminalID,
      'ipimeNO': ipimeNO,
      'mailId': mailId,
      'sessionId': sessionId,
      'sysDate': sysDate,
    };
  }
}
