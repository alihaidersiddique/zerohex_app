import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../constants.dart';

class Dashboard {
  feedsProjectsApiCall(final token) async {
    final url =
        Uri.parse('$apiAddress/requests/show_all_requests/ali@gmail.com/true');

    final response = await http.get(url, headers: {'x-access-token': '$token'});

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      print('api call method response: ' + json['result']);
      return json["result"];
    } else {
      throw Exception('Failed to load themes');
    }
  }
}
