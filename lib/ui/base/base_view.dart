import 'package:flutter/material.dart';
import 'package:flutter_base/ui/base/base_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class BaseView<T extends BaseViewModel> extends HookConsumerWidget {
  abstract final ChangeNotifierProvider<T> viewModelProvider;

  const BaseView({Key? key}) : super(key: key);

  Widget createView();

  void onViewCreated(T viewModel) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      initState(viewModel);
    });
  }

  void initState(T viewModel) {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final T viewModel = ref.read(viewModelProvider);
    onViewCreated(viewModel);
    return Scaffold(
      body: Center(
        child: _ContentView<T>(viewModelProvider, createView()),
      ),
    );
  }
}

class _ContentView<T extends BaseViewModel> extends HookConsumerWidget {
  const _ContentView(this.viewModelProvider, this.content, {Key? key})
      : super(key: key);

  final ChangeNotifierProvider<T> viewModelProvider;
  final Widget content;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final T viewModel = ref.watch(viewModelProvider);
    return Container(
      child: Center(
        child: viewModel.isBusy
            ? const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.deepOrange))
            : content,
      ),
      color: Colors.black,
    );
  }
}
