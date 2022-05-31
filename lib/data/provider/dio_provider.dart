import 'package:dio/dio.dart';
import 'package:flutter_base/data/remote/app_dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider<Dio>((_) => AppDio.getInstance());
