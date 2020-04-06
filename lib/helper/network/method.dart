import 'dart:async';
import 'package:http/http.dart' show Client;

class Network {
  Client client = Client();

  Future<dynamic> getRequest(String url) async {
    try {
      final response = await client.get(url).timeout(Duration(seconds: 20));
      if (response.statusCode == 401) {
        throw Exception('${response.statusCode}');
      }
      return response;
    } on TimeoutException catch (_) {
      throw Exception(_);
    }
  }
}
