import 'package:flutter/material.dart';
import 'package:flutter_base/data/model/market.dart';
import 'package:flutter_base/data/remote/app_api_helper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//flutter pub run build_runner build --delete-conflicting-outputs

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

final homeViewModelProvider =
    ChangeNotifierProvider((ref) => HomeViewModel(ref.read));

class HomeViewModel extends ChangeNotifier {
  HomeViewModel(this._reader);

  final Reader _reader;
  List<Market> _markets = [];
  late final AppApiHelper appApiHelper = _reader(appApiHelperProvider);

  Future<void> fetchMarkets() async {
    appApiHelper.getListMarket().then((value) {
      // _markets = value.dataOrThrow.result.markets;
      // print('123123 ${_markets.length}');
    });
  }
}

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  String getName() {
    return 'hh';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeViewModel homeViewModel = ref.watch(homeViewModelProvider);
    homeViewModel.fetchMarkets();
    return Scaffold(
      body: Center(
        child: Text('${homeViewModel._markets.length}'),
      ),
    );
  }
}
