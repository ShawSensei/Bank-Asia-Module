class ApiUrls {
  ApiUrls._();

  //static const String baseUrl = 'https://smartapp.bankasia-bd.com/smart-app-api/';

  //static const String baseUrl = 'http://10.11.201.133:9191/smart-app-api/';
  static const String baseUrl = 'http://10.11.201.52:81/CardApi/';

  //static const String baseUrl = 'http://202.40.191.226:9191/smart-app-api/';
  //static const String baseUrl = 'http://103.17.69.51/smart-app-api/';
  //static const String baseUrl = 'http://103.17.69.51:8083/smart-app-api/';

  static String cardListUrl = '$baseUrl/CardListApi?';
  static const String cardInfoListUrl = '$baseUrl/CardInfoListApi';
  static const String cardInfoUrl = '$baseUrl/CardInfoApi';
  static const String last10Transaction = '$baseUrl/Last10TransactionApi';
  static const String statementUrl = '$baseUrl/ViewStatementApi';
}
