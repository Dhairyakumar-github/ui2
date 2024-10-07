import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui2/Screens/NavigationBar.dart/customNavigationBar.dart';
import 'package:ui2/Screens/OnBordingScreen/onBoading_screen.dart';
import 'package:ui2/Screens/RegistrationScreen/SignInScreen/sign_in_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3), () => switchScreen());
  }

  void switchScreen() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.getBool("isFirstTime") == false) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return CustomNavigationBar();
        }),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) {
          return OnBoadingScreen();
        }),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/logoicon.png",
        ),
      ),
    );
  }
}
// #1F203D