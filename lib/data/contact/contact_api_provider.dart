import 'package:http/http.dart';

import '../../helper/helpers.dart';
import '../../models/models.dart';

class ContactApiProvider {
  Client client = Client();
  final network = Network();

  //! Not Stable
  // Future<List<ContactModel>> getAllContact() async {
  //   final url = '$BASE_URL_DATA?table=$TABLE_CONTACT&action=$ACTION_READ_ALL';
  //   var response = await network.getRequest(url);
  //   if (response.statusCode == 200) {
      // var body = allContactFromJson(response.body);
      // return body;
    // } else {
    //   return response;
    // }
  // }

  Future<ListContactModel> getAllContactPaginate(int page, int length) async {
    final url =
        '$BASE_URL_DATA?table=$TABLE_CONTACT&action=$ACTION_PAGINATE&page=$page&num=$length';
    var response = await network.getRequest(url);
    if (response.statusCode == 200) {
      var body = listContactModelFromJson(response.body);
      return body;
    } else {
      return response;
    }
  }
}
