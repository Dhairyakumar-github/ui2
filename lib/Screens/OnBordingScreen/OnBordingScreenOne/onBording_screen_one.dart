import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnbordingScreenOne extends StatelessWidget {
  const OnbordingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                // SizedBox(
                //   height: 10,
                // ),
                Image.asset(
                  "assets/images/dummyImage1.png",
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "ENJOY YOUR MOVIE",
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Use filler text that has been edited for length and format to match the characteristics of real content as closely.",
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
