import 'package:http/http.dart';

import '../../helper/helpers.dart';
import '../../models/models.dart';

class FaqApiProvider {
  Client client = Client();
  final network = Network();

  Future<List<FaqModel>> getAllFaq() async {
    final url = '$BASE_URL_DATA?table=$TABLE_FAQ&action=$ACTION_READ_ALL';
    var response = await network.getRequest(url);
    if (response.statusCode == 200) {
      var body = allFaqFromJson(response.body);
      return body;
    } else {
      return response;
    }
  }

  Future<ListFaqModel> getAllFaqPaginate(int page, int length) async {
    final url =
        '$BASE_URL_DATA?table=$TABLE_FAQ&action=$ACTION_PAGINATE&page=$page&num=$length';
    var response = await network.getRequest(url);
    if (response.statusCode == 200) {
      var body = listFaqModelFromJson(response.body);
      return body;
    } else {
      return response;
    }
  }
}
