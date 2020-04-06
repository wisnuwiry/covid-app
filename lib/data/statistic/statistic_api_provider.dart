import '../../helper/helpers.dart';
import '../../models/models.dart';

class StatisticApiProvider{
  final network = Network();

  Future<List<CaseCountry>> getCaseWorld() async{
    final String url = "$BASE_URL_STATISTIC/$ALL_COUNTRY";
    final response = await network.getRequest(url);
    if(response.statusCode == 200){
      final body = caseListCountryFromJson(response.body);
      return body;  
    }else{
      return response;
    }
  }

  Future<CaseCountry> getCaseCountry(String country) async{
    final String url = "$BASE_URL_STATISTIC/$ALL_COUNTRY/$country";
    final response = await network.getRequest(url);
    if(response.statusCode == 200){
      final body = caseCountryFromJson(response.body);
      return body;
    }else{
      return response;
    }
  }
}