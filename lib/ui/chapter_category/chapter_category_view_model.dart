import 'package:flutter_base/data/model/manga.dart';
import 'package:flutter_base/data/model/season.dart';
import 'package:flutter_base/ui/base/base_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChapterCategoryViewModel extends BaseViewModel {
  ChapterCategoryViewModel(Reader reader) : super(reader);
  List<Season> _seasons = [];

  List<Season> get seasons => _seasons;

  set seasons(List<Season> value) {
    _seasons = value;
  }

  Future<void> fetchMangaSeason(String playlistID, String profileID) async {
    await appApiHelper.getMangaSeason(playlistID, profileID).then((value) {
      _seasons.add(value.dataOrThrow);
    });
  }

  Future<void> getListChapter(Manga manga) async {
    seasons = [];
    _seasons.isEmpty ? setBusy(true) : setBusy(false);
    for (var id in manga.playListIds) {
      await fetchMangaSeason(id, manga.id);
    }
    _seasons.isEmpty ? setBusy(true) : setBusy(false);
  }

  String getDateToDisplay(String time) {
    DateTime dateTime = DateTime.parse(time);
    String result = '${dateTime.day}/${dateTime.month}/${dateTime.year}';
    return result;
  }
}
