import 'package:dio/dio.dart';
import 'package:flutter_base/data/repository/remote/api_service_end_point.dart';
import 'package:flutter_base/data/repository/remote/app_dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiServiceEndPointProvider =
    Provider((ref) => ApiServiceEndPoint(ref.read));

final apiServiceEndPointMovieProvider =
    Provider((ref) => ApiServiceEndPointMovie(ref.read));

final dioProvider = Provider<Dio>((_) => AppDio.getInstance());
