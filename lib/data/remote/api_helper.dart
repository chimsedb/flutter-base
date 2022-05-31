import 'package:flutter_base/data/model/api_response_collection.dart';
import 'package:flutter_base/data/model/market.dart';
import 'package:flutter_base/data/model/result.dart';

abstract class ApiHelper {
  Future<Result<ApiResponseCollection<Markets>>> getListMarket();
}
