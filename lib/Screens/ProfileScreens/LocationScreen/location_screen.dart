import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.arrow_back_ios_new_rounded,
                              color: Colors.white,
                              size: 18,
                            ),
                            const SizedBox(width: 10),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.3,
                              child: const Text(
                                "Location",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 188, 168, 168),
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xffFB6E37),
                                Color(0xff7D37FB),
                              ],
                            ),
                          ),
                          height: 40,
                          width: 40,
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                // height: 50,
                width: MediaQuery.of(context).size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                  "Use My Location",
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
