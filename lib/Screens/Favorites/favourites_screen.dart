import 'package:flutter/material.dart';

class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
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
                                "Favorites",
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
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Action ",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "View All",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 230.0,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Column(
                      children: [
                        Container(
                          width: 160,
                          height:
                              180, // You can adjust the height as per your design
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
                        const Text(
                          "John Wich: Chapter",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 19,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "Action, Crime, Thriller",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Divider(
              thickness: 0.2,
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Animation",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "View All",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 230.0,
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Column(
                      children: [
                        Container(
                          width: 160,
                          height:
                              180, // You can adjust the height as per your design
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
                        const Text(
                          "John Wich: Chapter",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                        const Text(
                          "Action, Crime, Thriller",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12,
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
