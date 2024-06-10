class CardInfoReqModel {
  late String fullPan;
  late String expireDate;

  CardInfoReqModel({
    required this.fullPan,
    required this.expireDate,
  });

  Map<String, String> toMap() {
    return {
      'fullPan': fullPan,
      'expaireDate': expireDate,
    };
  }
}
