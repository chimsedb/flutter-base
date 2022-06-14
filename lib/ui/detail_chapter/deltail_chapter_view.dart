import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base/data/di/view_model_provider.dart';
import 'package:flutter_base/ui/base/base_view.dart';
import 'package:flutter_base/ui/detail_chapter/deltail_chapter_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';

class DetailChapterView extends StatefulHookConsumerWidget {
  const DetailChapterView({required this.slug, required this.id, Key? key})
      : super(key: key);
  final String slug;
  final String id;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => DetailChapterState();
}

class DetailChapterState extends ConsumerState<DetailChapterView> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DetailChapterContent(
        id: widget.id,
        slug: widget.slug,
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }
}

class DetailChapterContent extends BaseView<DetailChapterViewModel> {
  const DetailChapterContent({required this.slug, required this.id, Key? key})
      : super(key: key);
  final String slug;
  final String id;

  @override
  Widget createView() {
    return const Body();
  }

  @override
  void initState(DetailChapterViewModel viewModel) {
    viewModel.fetchMovie(slug, id);
  }

  @override
  ChangeNotifierProvider<DetailChapterViewModel> get viewModelProvider =>
      detailViewModelProvider;
}

class Body extends HookConsumerWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(detailViewModelProvider);
    return Container(
      color: Colors.red,
      child: viewModel.controller != null
          ? VideoApp(viewModel.controller!)
          : Container(),
    );
  }
}

class VideoApp extends HookConsumerWidget {
  final VideoPlayerController controller;

  const VideoApp(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(detailViewModelProvider);
    final AsyncValue<String> message = viewModel.currentTime == null
        ? const AsyncValue.data('')
        : ref.watch(viewModel.currentTime!);
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            children: [
              controller.value.isInitialized
                  ? VideoPlayer(controller)
                  : Container(),
              Positioned(
                width: MediaQuery.of(context).size.width - 110,
                child: Row(
                  children: [
                    message.when(
                        data: (text) => Text(
                              text,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                        loading: () => const Text('--:--'),
                        error: (Object error, StackTrace? stackTrace) =>
                            const Text('--:--')),
                    Expanded(
                      child: Slider(
                          value: controller.value.position.inSeconds.toDouble(),
                          max: controller.value.duration.inSeconds.toDouble(),
                          onChanged: (double value) {
                            controller.seekTo(Duration(seconds: value.toInt()));
                          }),
                      flex: 1,
                    ),
                    Text(
                      viewModel
                          .convertDurationToString(controller.value.duration),
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    )
                  ],
                ),
                left: 15,
                bottom: 5,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            viewModel.handlePlayVideo();
          },
          child: Icon(
            controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }
}
