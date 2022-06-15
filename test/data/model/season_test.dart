import 'package:flutter_base/data/model/season.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  late final Map<String, dynamic> json;
  setUp(() {
    json = {
      "title": "vxcvcx",
      "data": [
        {
          "id": "hgfhf",
          "title": "dasda",
          "slug": "eqweqw",
          "categories": [
            {"id": "45345"}
          ],
          "thumbnails": {
            "medium": {"url": "zxc"}
          }
        }
      ]
    };
  });
  test('test fromJson', () {
    expect(Season.fromJson(json), isA<Season>());
  });

  test('test fromJson', () {
    expect(Season.fromJson(json), isA<Season>());
  });

  test('test toJson', () {
    expect(Season.fromJson(json).toJson(), isA<Map<String,dynamic>>());
  });
}
