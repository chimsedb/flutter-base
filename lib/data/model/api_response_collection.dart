class ApiResponseCollection<T> {
  final List<T> _result;

  ApiResponseCollection(this._result);

  List<T> get result => _result;

  factory ApiResponseCollection.fromJson(
      Map<String, dynamic> json, Function(Map<String, dynamic>) convert) {
    return ApiResponseCollection(
        (json['result'] as List).map((e) => convert(e)).toList().cast<T>());
  }
}

