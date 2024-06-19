import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:irregular_verbs/src/config/router/app_router.dart';
import 'package:irregular_verbs/src/presentation/ui/home_screen.dart';
import 'package:irregular_verbs/src/utils/style/app_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      context.navigateReplacement(const HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: const Text("verb",style:AppStyle.splashStyle,
        textAlign: TextAlign.center,
        ).tr(),
      ),
    );
  }
}
