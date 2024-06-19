import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:irregular_verbs/app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: const [Locale("ru", "RU"), Locale("uz", "UZ"),],
      path: "assets/languages",
      fallbackLocale: const Locale("ru", "RU"),
      child: const MyApp()));
}



