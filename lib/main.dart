import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app_config.dart';
import 'package:flutter_base/ui/route/app_route.gr.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

//flutter pub run build_runner build --delete-conflicting-outputs

Future main() async {
  await dotenv.load(fileName: kReleaseMode ? ".env-release" : ".env-dev");
  print(AppConfig.instance.baseUrl);
  print(AppConfig.instance.baseUrlMovie);
  runApp(const ProviderScope(child: App()));
}

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = useMemoized(() => AppRouter());
    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
