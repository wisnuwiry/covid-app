import 'package:http/http.dart';

import '../../helper/helpers.dart';
import '../../models/models.dart';

class VideoApiProvider {
  Client client = Client();
  final network = Network();

  //! Not Stable
  // Future<List<VideoModel>> getAllVideo() async {
  //   final url = '$BASE_URL_DATA?table=$TABLE_VIDEO&action=$ACTION_READ_ALL';
  //   var response = await network.getRequest(url);
  //   if (response.statusCode == 200) {
      // var body = allVideoFromJson(response.body);
      // return body;
  //   } else {
  //     return response;
  //   }
  // }

  Future<ListVideoModel> getAllVideoPaginate(int page, int length) async {
    final url =
        '$BASE_URL_DATA?table=$TABLE_VIDEO&action=$ACTION_PAGINATE&page=$page&num=$length';
    var response = await network.getRequest(url);
    if (response.statusCode == 200) {
      var body = listVideoModelFromJson(response.body);
      return body;
    } else {
      return response;
    }
  }
}
