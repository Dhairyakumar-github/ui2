import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ui2/Screens/Movies/MovieListViewScreen/movie_listview_screen.dart';
import 'package:ui2/Screens/Movies/MovieSearchScreen/movie_search_screen.dart';

class MovieDashboardScreen extends StatefulWidget {
  const MovieDashboardScreen({super.key});

  @override
  State<MovieDashboardScreen> createState() => _MovieDashboardScreenState();
}

class _MovieDashboardScreenState extends State<MovieDashboardScreen> {
  // CarouselSliderController buttonCarouselController =
  //     CarouselSliderController();
  // CarouselSliderController buttonCarouselController =
  //     CarouselSliderController();
  int currentIndex = 0;
  int tabIndex = 0;
  int crousalIndex = 0;
  List movieName = [
    "Avatar: Special Edition",
    "Inception",
    "Dune: Part Two",
    "Avangers"
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
              height: h * 0.4,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: GestureDetector(
                              // onTap: () => Navigator.pop(context),
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  SizedBox(width: 10),
                                  Flexible(
                                    child: Text(
                                      "Movies",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 18,
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
                                        const MovieSearchScreen())),
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
                              height: 35,
                              width: 35,
                              child: const Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 18,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tabIndex = 0;
                              });
                            },
                            child: Text(
                              "Tranding",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: tabIndex == 0 ? 18 : 16,
                                color:
                                    tabIndex == 0 ? Colors.white : Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                tabIndex = 1;
                              });
                            },
                            child: Text(
                              "Populor",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: tabIndex == 1 ? 18 : 16,
                                color:
                                    tabIndex == 1 ? Colors.white : Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CarouselSlider(
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
// carouselController: buttonCarouselController,
                      initialPage: 0,
                      onPageChanged: (index, reason) {
                        // print(index);
                        setState(() {
                          crousalIndex = index;
                        });
                      },
                      scrollDirection: Axis.horizontal,
                      padEnds: false,
                      enlargeCenterPage: true,
                      height: MediaQuery.of(context).size.height * 0.43,
                      enlargeFactor: 0.5,
                      enableInfiniteScroll: true,
                      viewportFraction: 0.7,
                      // aspectRatio: 15 / 4,
                      enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                    ),
                    items: [
                      "assets/images/img2.jpg",
                      "assets/images/img1.jpg",
                      "assets/images/img2.jpg",
                      "assets/images/img1.jpg",
                    ].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MovieListviewScreen(
                                    imageUrl: i.toString(),
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              // margin: const EdgeInsets.only(right: 100),
                              width: w * 0.6,
                              height: h * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  // height: h * 0.4,
                                  i.toString(),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  //       DotsIndicator(
                  //   dotsCount: items.length,
                  //   position: ,
                  // ),

                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                // width: 220,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 2),
                                child: const Text(
                                  "IMDB",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "8.9",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Flexible(
                          child: Text(
                            movieName[crousalIndex],
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          width: 220,
                          child: Text(
                            "Action,Crime, Thriller",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // ElevatedButton(
                  //   onPressed: () => buttonCarouselController.nextPage(
                  //       duration: Duration(milliseconds: 300),
                  //       curve: Curves.linear),
                  //   child: Text('→'),
                  // ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Trailers",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MovieListviewScreen(
                                        imageUrl: "assets/images/img2.jpg",
                                      ),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      "assets/images/img2.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/images/play.png",
                                height: 30,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MovieListviewScreen(
                                        imageUrl: "assets/images/img1.jpg",
                                      ),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      "assets/images/img1.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/images/play.png",
                                height: 30,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 200,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => MovieListviewScreen(
                                        imageUrl: "assets/images/img2.jpg",
                                      ),
                                    ),
                                  );
                                },
                                child: SizedBox(
                                  width: 200,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      "assets/images/img2.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Image.asset(
                                "assets/images/play.png",
                                height: 30,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Opening This Week",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 6,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        mainAxisExtent: h * 0.29,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return SizedBox(
                          // width: MediaQuery.of(context).size.width,
                          // height: h * 0.26,
                          child: Column(
                            children: [
                              Container(
                                width: w * 0.5,
                                height: h *
                                    0.23, // You can adjust the height as per your design
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: const Color.fromARGB(255, 0, 0, 0),
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
                              const Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Text(
                                  "John Wich: Chapter",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    height: 1,
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Text(
                                "Action, Crime, Thriller ",
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
