import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:irregular_verbs/src/config/theme/app_theme.dart';
import 'package:irregular_verbs/src/presentation/provider/get_data.dart';
import 'package:irregular_verbs/src/presentation/ui/splash_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
         ChangeNotifierProvider(create: (context)=>GetDataProvider()),
      ],
      child: MaterialApp(
        theme: Apptheme.light,
        debugShowCheckedModeBanner: false,
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        home: const SplashScreen(),
      ),
    );
  }
}