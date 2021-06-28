import 'dart:convert';

import 'package:demo_flutter_application/src/models/itemModel.dart';
import 'package:http/http.dart';

class MovieApiProvider {
  Client client = Client();
  final _apiKey = '7bdceb7f0d7eedc83b684f089a25fddf';

  Future<ItemModel> fetchMovieList() async {
    final response = await client.get(Uri.parse("http://api.themoviedb.org/3/movie/popular?api_key=$_apiKey"));
    if (response.statusCode == 200) {
      return ItemModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}