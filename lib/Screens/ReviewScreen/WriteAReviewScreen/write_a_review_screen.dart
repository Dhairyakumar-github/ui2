import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui2/Screens/TicketBooking/ticket_booking_screen.dart';

class WriteAReviewScreen extends StatefulWidget {
  const WriteAReviewScreen({super.key});

  @override
  State<WriteAReviewScreen> createState() => _WriteAReviewScreenState();
}

class _WriteAReviewScreenState extends State<WriteAReviewScreen> {
  double starRating = 0.0;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
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
                  child: const Row(
                    children: [
                      Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "Write a Review",
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
              Image.asset(
                "assets/images/review.png",
                width: w * 0.3,
              ),
              const SizedBox(
                height: 10,
              ),
              StarRating(
                size: 25.0,
                borderColor: Colors.yellow,
                rating: starRating,
                emptyIcon: Icons.star_border_outlined,
                filledIcon: Icons.star,
                halfFilledIcon: Icons.star_half,
                color: const Color.fromARGB(255, 255, 247, 0),
                allowHalfRating: true,
                onRatingChanged: (rating) {
                  setState(() {
                    starRating = rating;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  // cursorHeight: 20,
                  decoration: InputDecoration(
                    hintText: "Title",
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                    filled: true,
                    fillColor: const Color(
                      0xff2e3350,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  maxLines: 5,
                  // cursorHeight: 20,
                  decoration: InputDecoration(
                    hintText: "Write your Review",
                    hintStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                    filled: true,
                    fillColor: const Color(
                      0xff2e3350,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Text(
                      "minimum Character: ",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Text(
                    "250",
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                // height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
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
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SelectTicketScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Submit",
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
