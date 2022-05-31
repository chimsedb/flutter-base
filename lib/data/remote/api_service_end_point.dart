import 'package:dio/dio.dart';
import 'package:flutter_base/data/model/api_response_collection.dart';
import 'package:flutter_base/data/model/market.dart';
import 'package:flutter_base/data/provider/dio_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service_end_point.g.dart';

final apiServiceEndPointProvider =
    Provider((ref) => ApiServiceEndPoint(ref.read));

@RestApi()
abstract class ApiServiceEndPoint {
  factory ApiServiceEndPoint(Reader reader) =>
      _ApiServiceEndPoint(reader(dioProvider));

  @GET('/markets')
  Future<ApiResponseCollection<Markets>> getListMarket();
}
