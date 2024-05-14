import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:nesro_mart/login_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedSplashScreen(
        splash: Image.asset("assets/splash_pic.png"),
        duration: 3000,
        curve: Curves.easeInOut,
        splashIconSize: 350,
        splashTransition: SplashTransition.slideTransition,
        animationDuration: const Duration(milliseconds: 1500),
        backgroundColor: Theme.of(context).colorScheme.background,
        pageTransitionType: PageTransitionType.fade,
        nextScreen: const LogInPage(),
      ),
    );
  }
}
