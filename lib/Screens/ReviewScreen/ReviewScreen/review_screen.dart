import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:ui2/Screens/ReviewScreen/WriteAReviewScreen/write_a_review_screen.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: h * 0.3 + 20,
              decoration: const BoxDecoration(
                color: Color(0xff2e3350),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: SafeArea(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: GestureDetector(
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
                                "Reviews",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            child: Flexible(
                              // width: MediaQuery.of(context).size.width * 0.3,
                              child: Text(
                                "All Reviews",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            WriteAReviewScreen()));
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Write a Review",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  // const SizedBox(width: 5),
                                  Icon(
                                    Icons.show_chart_rounded,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: w * 0.9,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "4.5",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        height: 1,
                                        fontSize: 35,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 7),
                                    child: Text(
                                      "Out of 05",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          height: 1,
                                          fontSize: 8,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    StarRating(
                                      size: 13.0,
                                      rating: 4.5,
                                      emptyIcon: Icons.star_border_outlined,
                                      filledIcon: Icons.star,
                                      halfFilledIcon: Icons.star_half,
                                      color: Colors.grey,
                                      allowHalfRating: true,
                                      onRatingChanged: (rating) {},
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: w * 0.4,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color(0xff525770),
                                          ),
                                        ),
                                        Container(
                                          width: w * 0.3,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xffFB6E37),
                                                Color(0xff7D37FB),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    StarRating(
                                      size: 13.0,
                                      rating: 3.5,
                                      emptyIcon: Icons.star_border_outlined,
                                      filledIcon: Icons.star,
                                      halfFilledIcon: Icons.star_half,
                                      color: Colors.grey,
                                      allowHalfRating: true,
                                      onRatingChanged: (rating) {},
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: w * 0.4,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color(0xff525770),
                                          ),
                                        ),
                                        Container(
                                          width: w * 0.2 - 10,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xffFB6E37),
                                                Color(0xff7D37FB),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    StarRating(
                                      size: 13.0,
                                      rating: 2.5,
                                      emptyIcon: Icons.star_border_outlined,
                                      filledIcon: Icons.star,
                                      halfFilledIcon: Icons.star_half,
                                      color: Colors.grey,
                                      allowHalfRating: true,
                                      onRatingChanged: (rating) {},
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: w * 0.4,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color(0xff525770),
                                          ),
                                        ),
                                        Container(
                                          width: w * 0.1 - 10,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xffFB6E37),
                                                Color(0xff7D37FB),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    StarRating(
                                      size: 13.0,
                                      rating: 1.5,
                                      emptyIcon: Icons.star_border_outlined,
                                      filledIcon: Icons.star,
                                      halfFilledIcon: Icons.star_half,
                                      color: Colors.grey,
                                      allowHalfRating: true,
                                      onRatingChanged: (rating) {},
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: w * 0.4,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color(0xff525770),
                                          ),
                                        ),
                                        Container(
                                          width: w * 0.1 + 10,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xffFB6E37),
                                                Color(0xff7D37FB),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    StarRating(
                                      size: 13.0,
                                      rating: 0.5,
                                      emptyIcon: Icons.star_border_outlined,
                                      filledIcon: Icons.star,
                                      halfFilledIcon: Icons.star_half,
                                      color: Colors.grey,
                                      allowHalfRating: true,
                                      onRatingChanged: (rating) {},
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Stack(
                                      children: [
                                        Container(
                                          width: w * 0.4,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color(0xff525770),
                                          ),
                                        ),
                                        Container(
                                          width: w * 0.1 - 10,
                                          height: 8,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            gradient: const LinearGradient(
                                              colors: [
                                                Color(0xffFB6E37),
                                                Color(0xff7D37FB),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: w * 0.1 - 8, top: 10),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "128 Rating",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              height: 1,
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 17,
                                    backgroundColor: Colors.orange,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: w * 0.7,
                                        child: const Text(
                                          "Archibald Northbottom ",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              height: 1.5,
                                              fontSize: 14,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      const Text(
                                        "12 Reviews, 12 Sep 2019",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            height: 1,
                                            fontSize: 9,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 13,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "4.5",
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        height: 1,
                                        fontSize: 9,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Watch Molly's Game yesterday, good movie,good movie, just a little too long for me Kevin Costner was excellent, as per usual.",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                                height: 1,
                                fontSize: 13,
                                color: Color.fromARGB(255, 190, 189, 189),
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Likes: 245",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(
                                  height: 1,
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      const Divider(),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
