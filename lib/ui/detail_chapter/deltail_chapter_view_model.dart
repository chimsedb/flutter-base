import 'package:flutter_base/ui/base/base_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:video_player/video_player.dart';

class DetailChapterViewModel extends BaseViewModel {
  DetailChapterViewModel(Reader reader) : super(reader);
  VideoPlayerController? _controller;

  VideoPlayerController? get controller => _controller;
  AutoDisposeStreamProvider<String>? currentTime;

  Future<void> fetchMovie(String slug, String id) async {
    setBusy(true);
    await appApiHelper.getMovie(slug, id).then((value) {
      _controller = VideoPlayerController.network(value.dataOrThrow.sourceLink);
      value.isFailure ? setError(true) : setError(false);
    }).whenComplete(() {
      _controller?.initialize().then((_) => setBusy(false));
    });
  }

  Future<void> handlePlayVideo() async {
    if (_controller == null) return;
    _controller!.value.isPlaying ? _controller!.pause() : _controller!.play();
    notifyListeners();
    fetchCurrentTimeMedia();
  }

  String convertDurationToString(Duration duration) {
    int minute = duration.inMinutes;
    int second = duration.inSeconds - minute * 60;
    String secondString = second > 10 ? '$second' : '0$second';
    String minuteString = minute > 10 ? '$minute' : '0$minute';
    return '$minuteString : $secondString';
  }

  void fetchCurrentTimeMedia() {
    currentTime = StreamProvider.autoDispose<String>((ref) async* {
      if (_controller == null) return;
      while (_controller!.value.isPlaying) {
        await Future.delayed(const Duration(seconds: 1));
        yield convertDurationToString(_controller!.value.position);
      }
    });
  }
}
