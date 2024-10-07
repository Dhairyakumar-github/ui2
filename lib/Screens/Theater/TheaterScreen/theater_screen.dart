import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ui2/Screens/Theater/PlaceTheatereScreen/palace_theatere_screen.dart';
import 'package:ui2/Screens/Theater/TheaterSearchScreen/theater_search_screen.dart';

class TheaterScreen extends StatefulWidget {
  const TheaterScreen({super.key});

  @override
  State<TheaterScreen> createState() => _TheaterScreenState();
}

class _TheaterScreenState extends State<TheaterScreen> {
  int crousalIndex = 0;
  CarouselSliderController buttonCarouselController =
      CarouselSliderController();
  List items = [
    "assets/images/img2.jpg",
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img1.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: h * 0.35,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color: Color(0xff2e3350),
              ),
            ),
            SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: GestureDetector(
                                onTap: () => Navigator.pop(context),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      color: Colors.white,
                                      size: 16,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      // width: MediaQuery.of(context).size.width * 0.3,
                                      child: Text(
                                        "Theaters",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const TheaterSearchScreen())),
                              child: Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 188, 168, 168),
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color(0xffFB6E37),
                                      Color(0xff7D37FB),
                                    ],
                                  ),
                                ),
                                height: 35,
                                width: 35,
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
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          // width: MediaQuery.of(context).size.width * 0.3,
                          child: Text(
                            "Near By",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          "View All",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CarouselSlider.builder(
                    itemCount: items.length,
                    options: CarouselOptions(
                      disableCenter: false,
                      // enlargeCenterPage: true, // Ensure center page isn't enlarged
                      // height: MediaQuery.of(context).size.height * 0.60,
                      // enlargeFactor: 0.5,
                      // enableInfiniteScroll: false, // Disable infinite scroll
                      // viewportFraction:
                      //     0.6, // Adjust to control how much of the next item is shown
                      // initialPage: 0, // Start from the first item (left)
                      // enlargeStrategy: CenterPageEnlargeStrategy.zoom,

                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        // print(index);
                        setState(() {
                          crousalIndex = index;
                        });
                      },
                      // scrollDirection: Axis.horizontal,
                      padEnds: false,
                      // onScrolled: (value) {
                      //   print(value);
                      // },
                      pageSnapping: true,

                      enlargeCenterPage: true,
                      height: MediaQuery.of(context).size.height * 0.4,
                      enlargeFactor: 0.4,
                      enableInfiniteScroll: true,
                      viewportFraction: 0.7,
                      aspectRatio: 15 / 4,

                      enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                    ),
                    itemBuilder: (context, index, realIndex) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const PalaceTheatereScreen()));
                        },
                        child: Container(
                          constraints: const BoxConstraints(minWidth: 200),
                          // color: const Color.fromARGB(84, 97, 93, 93),
                          width: w * 0.6,
                          // height: h * 0.3,
                          child: Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // margin: const EdgeInsets.only(right: 100),
                                  width: w * 0.6,
                                  height: h * 0.3,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      items[index].toString(),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: w * 0.5,
                                            child: const Text(
                                              "Miraj City Pulse ",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: w * 0.5,
                                            child: const Text(
                                              "Landmark - Hollywood Highway",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      // width: w * 0.10,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 2),
                                      child: const Text(
                                        "⭐ 4.3",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  )

                  // items: [
                  //   "assets/images/img2.jpg",
                  //   "assets/images/img1.jpg",
                  //   "assets/images/img2.jpg",
                  //   "assets/images/img1.jpg",
                  // ].map((i) {
                  //   return Builder(
                  //     builder: (BuildContext context) {
                  //       return Padding(
                  //         padding: const EdgeInsets.only(left: 10),
                  //         child: SizedBox(
                  //           // color: const Color.fromARGB(84, 97, 93, 93),
                  //           width: w * 0.6,
                  //           child: Column(
                  //             crossAxisAlignment: CrossAxisAlignment.start,
                  //             children: [
                  //               Container(
                  //                 // margin: const EdgeInsets.only(right: 100),
                  //                 width: w * 0.6,
                  //                 height: h * 0.4,
                  //                 decoration: BoxDecoration(
                  //                   borderRadius: BorderRadius.circular(20),
                  //                   color: Colors.white,
                  //                 ),
                  //                 child: ClipRRect(
                  //                   borderRadius: BorderRadius.circular(20),
                  //                   child: Image.asset(
                  //                     i.toString(),
                  //                     fit: BoxFit.cover,
                  //                   ),
                  //                 ),
                  //               ),
                  //               Row(
                  //                 children: [
                  //                   Expanded(
                  //                     child: Column(
                  //                       crossAxisAlignment:
                  //                           CrossAxisAlignment.start,
                  //                       children: [
                  //                         SizedBox(
                  //                           width: w * 0.5,
                  //                           child: Text(
                  //                             "Miraj City Pulse",
                  //                             maxLines: 1,
                  //                             overflow: TextOverflow.ellipsis,
                  //                             style: TextStyle(
                  //                               fontSize: 16,
                  //                               color: Colors.white,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         SizedBox(
                  //                           width: w * 0.5,
                  //                           child: Text(
                  //                             "Landmark - Hollywood Highway",
                  //                             maxLines: 1,
                  //                             overflow: TextOverflow.ellipsis,
                  //                             style: TextStyle(
                  //                               fontSize: 12,
                  //                               color: Colors.white,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                   Container(
                  //                     decoration: BoxDecoration(
                  //                       border: Border.all(color: Colors.white),
                  //                       borderRadius: BorderRadius.circular(7),
                  //                     ),
                  //                     // width: w * 0.10,
                  //                     padding: const EdgeInsets.symmetric(
                  //                         horizontal: 5, vertical: 2),
                  //                     child: Text(
                  //                       "⭐ 4.3",
                  //                       maxLines: 1,
                  //                       overflow: TextOverflow.ellipsis,
                  //                       style: TextStyle(
                  //                         fontSize: 14,
                  //                         color: Colors.white,
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       );
                  //     },
                  //   );
                  // }).toList(),
                  // )
                  ,
                  // ElevatedButton(
                  //   onPressed: () => buttonCarouselController.nextPage(
                  //       duration: Duration(milliseconds: 300), curve: Curves.linear),
                  //   child: Text('→'),
                  // )
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          // width: MediaQuery.of(context).size.width * 0.3,
                          child: Text(
                            "A/c Theater",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          "View All",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    // constraints: BoxConstraints(minHeight: 300),
                    // color: const Color.fromARGB(52, 255, 255, 255),
                    height: h * 0.33,
                    // width: w,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      // constraints: BoxConstraints(
                                      //     maxWidth: 300, minWidth: 200),
                                      width: w * 0.45,
                                      height: h * 0.25,
                                      // You can adjust the height as per your design
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                          "assets/images/img2.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "John Wich: Chapter",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const Text(
                                      "Rating: 4.5",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          // width: MediaQuery.of(context).size.width * 0.3,
                          child: Text(
                            "Non A/c Theater",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Text(
                          "View All",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    // constraints: BoxConstraints(minHeight: 300),
                    // color: const Color.fromARGB(52, 255, 255, 255),
                    height: h * 0.33,
                    // width: w,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                  children: [
                                    Container(
                                      // constraints: BoxConstraints(
                                      //     maxWidth: 300, minWidth: 200),
                                      width: w * 0.45,
                                      height: h * 0.25,
                                      // You can adjust the height as per your design
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                          "assets/images/img2.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      "John Wich: Chapter",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const Text(
                                      "Rating: 4.5",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
