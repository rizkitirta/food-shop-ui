import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:my_project/pages/onboard/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String _myAppLogo = "assets/splash.png";

  @override
  void initState() {
    super.initState();

    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.asset(_myAppLogo),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  void startSplashScreen() async {
    Timer(Duration(seconds: 3), navigateToNextScreen);
  }

  void navigateToNextScreen() {
    Get.offAll(OnboardingPage());
  }
}
