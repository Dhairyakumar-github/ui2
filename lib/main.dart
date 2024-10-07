import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui2/Screens/Movies/MovieSearchScreen/movie_search_screen.dart';
import 'package:ui2/Screens/ReviewScreen/ReviewScreen/review_screen.dart';
import 'package:ui2/Screens/ReviewScreen/WriteAReviewScreen/write_a_review_screen.dart';
import 'package:ui2/Screens/SplashScreen/splash_screen.dart';
import 'package:ui2/Screens/Theater/PlaceTheatereScreen/palace_theatere_screen.dart';
import 'package:ui2/Screens/Theater/PlaceTheatersScreen/place_theaters_screen.dart';
import 'package:ui2/Screens/Theater/TheaterScreen/theater_screen.dart';
import 'package:ui2/Screens/Theater/TheaterSearchScreen/theater_search_screen.dart';
import 'package:ui2/Screens/TicketBooking/ticket_booking_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
            // focusColor: Colors.pink,
            ),
        scaffoldBackgroundColor: Color(0xff1F203D),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:
          //  WriteAReviewScreen()
          //  ReviewScreen()
          // PlaceTheatersScreen()
          // PalaceTheatereScreen()
          // TheaterSearchScreen(),
          // TheaterScreen()
          // SelectTicketScreen()
          SplashScreen(),
    );
  }
}
