import 'package:flutter/material.dart';
import 'package:ui2/Screens/Movies/SingleMovieDetailsScreen/single_movie_details_screen.dart';

class MovieListviewScreen extends StatefulWidget {
  String imageUrl;
  MovieListviewScreen({super.key, required this.imageUrl});

  @override
  State<MovieListviewScreen> createState() => _MovieListviewScreenState();
}

class _MovieListviewScreenState extends State<MovieListviewScreen> {
  int _tabIndex = 0;
  double _play = 10.0;
  late String imageUrl;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageUrl = widget.imageUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 68, 65, 92),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
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
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
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
                              // onTap: () => Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) =>
                              //             const MovieSearchScreen())),
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
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _tabIndex = 0;
                              });
                            },
                            child: Text(
                              "Tranding",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: _tabIndex == 0 ? 22 : 20,
                                color:
                                    _tabIndex == 0 ? Colors.white : Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _tabIndex = 1;
                              });
                            },
                            child: Text(
                              "Populor",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: _tabIndex == 1 ? 22 : 20,
                                color:
                                    _tabIndex == 1 ? Colors.white : Colors.grey,
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
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SingleMovieDetailsScreen()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.black,
                            ),
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                imageUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 10),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                              ),
                              Flexible(
                                child: Slider(
                                  value: _play,
                                  onChanged: (value) {
                                    setState(() {
                                      _play = value;
                                    });
                                    print(value);
                                  },
                                  min: 0,
                                  max: 100.0,
                                ),
                              ),
                              const Icon(
                                Icons.photo_size_select_large_outlined,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  // const SizedBox(
                  //   height: 20,
                  // ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
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
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Fast and Ferious Hobs Ans Show",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
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
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 10),
                      child: Column(
                        children: [
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      "assets/images/img1.jpg",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            borderRadius:
                                                BorderRadius.circular(10),
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
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.6,
                                      child: const Text(
                                        "Fast and Ferious Hobs And Show",
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
                                    const SizedBox(
                                      height: 10,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 0.2,
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
