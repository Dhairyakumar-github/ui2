import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui2/Screens/RegistrationScreen/SignInScreen/sign_in_screen.dart';

class OnBordingScreenTwo extends StatelessWidget {
  const OnBordingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: SizedBox(
            // height: MediaQuery.of(context).size.height * 0.68,
            height: MediaQuery.of(context).size.height * 0.85,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                Image.asset(
                  "assets/images/dummyImage2.png",
                  width: MediaQuery.of(context).size.width * 0.8,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    RichText(
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      text: const TextSpan(
                        text: "THERE'S ALWAYS ROOM  ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "for a                 Transport People",
                            style: TextStyle(
                              wordSpacing: 2,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.italic,
                              fontFamily: "Engagement",
                              color: Colors.white,
                              // fontSize: 18,
                            ),
                          ),
                          TextSpan(
                            text: " TO ANOTHER WORLD",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              // fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // const Text(
                    //   "There's always Room for a Transport People to another World",
                    //   maxLines: 2,
                    //   textAlign: TextAlign.center,
                    //   overflow: TextOverflow.ellipsis,
                    //   style: TextStyle(
                    //       fontSize: 18,
                    //       fontWeight: FontWeight.w500,
                    //       color: Colors.white),
                    // ),
                    const SizedBox(
                      height: 40,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInScreen())),
                      child: Container(
                        // height: 50,
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 188, 168, 168),
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xffFB6E37),
                                Color(0xff7D37FB),
                              ],
                            )),
                        child: const Text(
                          "Create An Account",
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    )
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
