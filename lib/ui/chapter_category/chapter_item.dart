import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_base/data/model/season.dart';
import 'package:flutter_base/ui/hook/use_router.dart';
import 'package:flutter_base/ui/route/app_route.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChapterItem extends HookConsumerWidget {
  const ChapterItem({required this.season, Key? key}) : super(key: key);
  final Season season;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            season.title,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 180,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: season.data.length,
                itemBuilder: (context, index) {
                  Data data = season.data[index];
                  return GestureDetector(
                    child: Row(
                      children: [
                        ClipRRect(
                          child: CachedNetworkImage(
                            imageUrl: data.thumbnails.url,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        const SizedBox(width: 5),
                      ],
                    ),
                    onTap: () => router.navigate(DetailChapterRoute(
                      slug: data.slug,
                      id: data.id,
                    )),
                  );
                }),
          )
        ],
      ),
    );
  }
}
