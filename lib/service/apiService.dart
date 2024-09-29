import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_asstes_project/model/model.dart';

class ApiService {
  final String urlLinke =
      "https://api.unsplash.com/photos/?client_id=Bhl0eeFXpAZTH2jzgd4Ie8xbyyiARB6z8ZmItJmEjf0";

  Future<List<UnsplashImage>> getApi() async {
    final response = await http.get(Uri.parse(urlLinke));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data
          .map(
            (e) => UnsplashImage.fromJson(e),
          )
          .toList();
    } else {
      throw Exception('Failed to Load Data');
    }
  }
}
