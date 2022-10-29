import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'core/translation/translation_keys.dart';
import 'pages/home_page.dart';

late TranslationKeys translationKeys;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  translationKeys = TranslationKeys();
  await translationKeys.load();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Translate',
      translations: translationKeys,
      locale: const Locale('pt', 'BR'),
      // locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('pt', 'BR'),
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      getPages: [GetPage(name: '/', page: () => const HomePage())],
    );
  }
}
