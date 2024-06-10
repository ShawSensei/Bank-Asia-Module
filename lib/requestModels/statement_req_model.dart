class StatementReqModel {
  late String authorization;
  late String fullPan;
  late String count;
  late String fromTime;
  late String toTime;
  late String comments;

  StatementReqModel({
    this.authorization = '',
    this.fullPan = '',
    this.count = '',
    this.fromTime = '',
    this.toTime = '',
    this.comments = '',
  });

  Map<String, String> toMap() {
    return {
      'authorization': authorization,
      'fullPan': fullPan,
      'count': count,
      'fromTime': fromTime,
      'toTime': toTime,
      'comments': comments,
    };
  }
}
