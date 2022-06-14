import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/data/di/view_model_provider.dart';
import 'package:flutter_base/data/model/manga.dart';
import 'package:flutter_base/ui/base/base_view.dart';
import 'package:flutter_base/ui/home/home_view_model.dart';
import 'package:flutter_base/ui/hook/use_router.dart';
import 'package:flutter_base/ui/route/app_route.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeView extends BaseView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget createView() {
    return const Body();
  }

  @override
  ChangeNotifierProvider<HomeViewModel> get viewModelProvider =>
      homeViewModelProvider;
}

class Body extends HookConsumerWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.7,
          crossAxisCount: 2,
        ),
        itemCount: mangaList.length,
        itemBuilder: (BuildContext context, int index) => GestureDetector(
              child: Column(
                children: [
                  Flexible(
                      child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Card(
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: SizedBox(
                        height: 150,
                        width: 150,
                        child: CachedNetworkImage(
                          imageUrl: mangaList[index].image,
                          fit: BoxFit.fill,
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                    ),
                  )),
                  Text(
                    mangaList[index].name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              onTap: () => router.navigate(ChapterCategoryRoute(
                manga: mangaList[index],
              )),
            ));
  }
}
