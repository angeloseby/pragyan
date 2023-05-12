import 'dart:convert';

import 'package:http/http.dart';

Future<List<dynamic>?> fetchJson(String courseCode) async {
  try {
    Response response = await get(Uri.parse(
        'https://raw.githubusercontent.com/angeloseby/jsonHost/main/union_app/$courseCode.json'));
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body);
      List papers = data['papers'];
      return papers;
    }
  } on Exception catch (e) {
    // TODO
  }
  return [];
}
