import 'package:http/http.dart';

import '../../helper/helpers.dart';
import '../../models/models.dart';

class NewsApiProvider {
  Client client = Client();
  final network = Network();

  //! Not Stable
  // Future<List<NewsModel>> getAllNews() async {
  //   final url = '$BASE_URL_DATA?table=$TABLE_NEWS&action=$ACTION_READ_ALL';
  //   var response = await network.getRequest(url);
  //   if (response.statusCode == 200) {
      // var body = allNewsFromJson(response.body);
      // return body;
  //   } else {
  //     return response;
  //   }
  // }

  Future<ListNewsModel> getAllNewsPaginate(int page, int length) async {
    final url =
        '$BASE_URL_DATA?table=$TABLE_NEWS&action=$ACTION_PAGINATE&page=$page&num=$length';
    var response = await network.getRequest(url);
    if (response.statusCode == 200) {
      var body = listNewsModelFromJson(response.body);
      return body;
    } else {
      return response;
    }
  }
}
