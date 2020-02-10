import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  String url;
  NetworkHelper(this.url);

  Future getData() async {
    http.Response response = await http.get(url);
    if (response.statusCode != 200) {
      print(response.statusCode);
      return null;
    }
    return jsonDecode(response.body);
  }
}
