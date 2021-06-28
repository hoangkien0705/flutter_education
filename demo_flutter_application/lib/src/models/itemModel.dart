class ItemModel {
  int _page = 0;
  int _total_results = 0;
  int _total_pages = 0;
  List<_Result> _results = [];

  ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['results'].length);
    _page = parsedJson['page'];
    _total_results = parsedJson['total_results'];
    _total_pages = parsedJson['total_pages'];
    List<_Result> temp = [];
    for (int i = 0; i < parsedJson['results'].length; i++) {
      _Result result = _Result(parsedJson['results'][i]);
      temp.add(result);
    }

    _results = temp;
  }

  List<_Result> get results => _results;

  set results(List<_Result> value) {
    _results = value;
  }

  int get total_pages => _total_pages;

  set total_pages(int value) {
    _total_pages = value;
  }

  int get total_results => _total_results;

  set total_results(int value) {
    _total_results = value;
  }

  int get page => _page;

  set page(int value) {
    _page = value;
  }
}

class _Result {
  int _vote_count = 0;
  int _id = 0;
  bool _video = false;
  var _vote_average;
  String _title = "";
  double _popularity = 0.0;
  String _poster_path = "";
  String _original_language = "";
  String _original_title = "";
  List<int> _genre_ids = [];
  String _backdrop_path = "";
  bool _adult = false;
  String _overview = "";
  String _release_date = "";

  _Result(result) {
    _vote_count = result['vote_count'];
    _id = result['id'];
    _video = result['video'];
    _vote_average = result['vote_average'];
    _title = result['title'];
    _popularity = result['popularity'];
    _poster_path = result['poster_path'];
    _original_language = result['original_language'];
    _original_title = result['original_title'];
    for (int i = 0; i < result['genre_ids'].length; i++) {
      _genre_ids.add(result['genre_ids'][i]);
    }
    _backdrop_path = result['backdrop_path'] == null ? "" : _backdrop_path;
    _adult = result['adult'];
    _overview = result['overview'];
    _release_date = result['release_date'] == null ? "" : _release_date;
  }

  String get release_date => _release_date;

  set release_date(String value) {
    _release_date = value;
  }

  String get overview => _overview;

  set overview(String value) {
    _overview = value;
  }

  bool get adult => _adult;

  set adult(bool value) {
    _adult = value;
  }

  String get backdrop_path {
    return _backdrop_path;
  }

  set backdrop_path(String value) {
    _backdrop_path = value;
  }

  List<int> get genre_ids => _genre_ids;

  set genre_ids(List<int> value) {
    _genre_ids = value;
  }

  String get original_title => _original_title;

  set original_title(String value) {
    _original_title = value;
  }

  String get original_language => _original_language;

  set original_language(String value) {
    _original_language = value;
  }

  String get poster_path => _poster_path;

  set poster_path(String value) {
    _poster_path = value;
  }

  double get popularity => _popularity;

  set popularity(double value) {
    _popularity = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  get vote_average => _vote_average;

  set vote_average(value) {
    _vote_average = value;
  }

  bool get video => _video;

  set video(bool value) {
    _video = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  int get vote_count => _vote_count;

  set vote_count(int value) {
    _vote_count = value;
  }
}