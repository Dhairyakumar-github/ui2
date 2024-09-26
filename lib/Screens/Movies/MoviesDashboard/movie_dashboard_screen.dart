import 'package:flutter/material.dart';
import 'package:ui2/Screens/Movies/MovieListViewScreen/movie_listview_screen.dart';
import 'package:ui2/Screens/Movies/MovieSearchScreen/movie_search_screen.dart';

class MovieDashboardScreen extends StatefulWidget {
  const MovieDashboardScreen({super.key});

  @override
  State<MovieDashboardScreen> createState() => _MovieDashboardScreenState();
}

class _MovieDashboardScreenState extends State<MovieDashboardScreen> {
  int currentIndex = 0;
  int tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SingleChildScrollView(
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
                                "Movies",
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
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
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
                          fontSize: tabIndex == 0 ? 22 : 20,
                          color: tabIndex == 0 ? Colors.white : Colors.grey,
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
                          fontSize: tabIndex == 1 ? 22 : 20,
                          color: tabIndex == 1 ? Colors.white : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // TabBar(
            //   onTap: (value) {
            //     setState(() {
            //       currentIndex = value;
            //     });
            //   },
            //   indicator: const BoxDecoration(),
            //   dividerHeight: 0,
            //   isScrollable: true,
            //   tabs: [
            //     Tab(
            //       child: Text(
            //         "Tranding",
            //         style: TextStyle(
            //           fontSize: currentIndex == 0 ? 20 : 16,
            //           color: currentIndex == 0
            //               ? Colors.white
            //               : const Color.fromARGB(255, 138, 134, 134),
            //         ),
            //       ),
            //     ),
            //     Tab(
            //       child: Text(
            //         "Populor",
            //         style: TextStyle(
            //           fontSize: currentIndex == 1 ? 20 : 16,
            //           color: currentIndex == 1
            //               ? Colors.white
            //               : const Color.fromARGB(255, 138, 134, 134),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // ignore: prefer_const_constructors
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 220,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/images/img2.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // width: 220,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            child: const Text(
                              "IMDB",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 20,
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
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        width: 220,
                        child: Text(
                          "Fast and Ferious Hobs Ans Show",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 220,
                        child: Text(
                          "Action,Crime, Thriller",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 220,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/images/img1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // width: 220,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            child: const Text(
                              "IMDB",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 20,
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
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        width: 220,
                        child: Text(
                          "Fast and Ferious Hobs Ans Show",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 220,
                        child: Text(
                          "Action,Crime, Thriller",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 220,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/images/img2.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // width: 220,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 2),
                            child: const Text(
                              "IMDB",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 20,
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
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                        width: 220,
                        child: Text(
                          "Fast and Ferious Hobs Ans Show",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 220,
                        child: Text(
                          "Action,Crime, Thriller",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
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
                "Trailers",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
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
                        const Icon(
                          Icons.play_circle_outline_sharp,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
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
                        const Icon(
                          Icons.play_circle_outline_sharp,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
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
                        const Icon(
                          Icons.play_circle_outline_sharp,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
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
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  mainAxisExtent: 260.0,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          child: Container(
                            width: 200,
                            height:
                                200, // You can adjust the height as per your design
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
                        ),
                        const Text(
                          "John Wich: Chapter",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "Action, Crime, Thriller",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 14,
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
    );
  }
}
