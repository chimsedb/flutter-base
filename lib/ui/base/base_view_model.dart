import 'package:flutter/material.dart';
import 'package:flutter_base/data/di/repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../data/repository/remote/app_api_helper.dart';

abstract class BaseViewModel extends ChangeNotifier {
  BaseViewModel(this._reader);

  final Reader _reader;

  Reader get reader => _reader;

  late final AppApiHelper _appApiHelper = reader(appApiHelperProvider);

  AppApiHelper get appApiHelper => _appApiHelper;

  bool _isBusy = false;

  bool get isBusy => _isBusy;

  bool _isError = false;

  bool get isError => _isError;

  void setBusy(bool state) {
    _isBusy = state;
    notifyListeners();
  }

  void setError(bool state) {
    _isError = state;
    notifyListeners();
  }
}
