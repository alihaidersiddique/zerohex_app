import 'package:http/http.dart' as http;
import '../../constants.dart';

class Proposal {
  //
  void submitProposalApiCall(String title, desc, budget, subDeadline) async {
    final url = Uri.parse('$apiAddress/requests/create_request');
    var headers = {
      'x-access-token':
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6ImFsaUBnbWFpbC5jb20iLCJpYXQiOjE2MzczMTY3OTgsImV4cCI6MTYzNzQwMzE5OH0.3peQ9o8fXgfQNfhhSjOUFqBVm8nV9RRbi5G6kOkm2cg'
    };
    var request = http.MultipartRequest('POST', url);

    request.fields.addAll({
      'title': '$title',
      'description': '$desc',
      'total_budget': '$budget',
      'submission_deadline': '$subDeadline',
      'email': 'ali@gmail.com'
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    print(response.statusCode);

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }
}
