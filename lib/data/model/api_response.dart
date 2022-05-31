class ApiResponse<T> {
  final T _result;

  ApiResponse(this._result);

  T get result => _result;

  factory ApiResponse.fromJson(
      Map<String, dynamic> json, Function(Map<String, dynamic>) convert) {
    return ApiResponse((convert(json['result'])));
  }
}
