import 'package:flutter/material.dart';
import 'package:ui2/Screens/OnBordingScreen/OnBordingScreenOne/onBording_screen_one.dart';
import 'package:ui2/Screens/OnBordingScreen/OnBordingScreenTwo/onBordingScreenTwo.dart';

class OnBoadingScreen extends StatefulWidget {
  const OnBoadingScreen({super.key});

  @override
  State<OnBoadingScreen> createState() => _OnBoadingScreenState();
}

class _OnBoadingScreenState extends State<OnBoadingScreen> {
  int initialPosition = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.max,

        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (value) {
                    setState(() {
                      initialPosition = value;
                    });
                  },
                  children: const [
                    OnbordingScreenOne(),
                    OnBordingScreenTwo(),
                  ],
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: initialPosition == 0 ? Colors.red : Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(
                width: 7,
              ),
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: initialPosition == 1 ? Colors.red : Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
