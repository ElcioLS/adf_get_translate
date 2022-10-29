import 'package:adf_get_translate/core/translation/translation_keys.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TranslateKeys.titleApp.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(TranslateKeys.welcome.trParams({'name': 'Elcinho'})),
            Text(TranslateKeys.userListTitleSimple.trPlural(1)),
            Text(TranslateKeys.userListTitleSimple.trPlural(2)),
            Text(
              TranslateKeys.userListTitle.trPluralParams(2, {
                'total': '2',
              }),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('en', 'US'));
                },
                child: const Text('Alterar EN')),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(const Locale('pt', 'BR'));
                },
                child: const Text('Alterar BR')),
          ],
        ),
      ),
    );
  }
}
