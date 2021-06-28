import 'package:demo_flutter_application/src/models/itemModel.dart';
import 'package:demo_flutter_application/src/resources/movie_api_provider.dart';

class Repository {
  final moviesApiProvider = MovieApiProvider();

  Future<ItemModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
}