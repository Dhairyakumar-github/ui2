import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter/material.dart';

import 'package:ui2/Screens/Favorites/favourites_screen.dart';
import 'package:ui2/Screens/Movies/MoviesDashboard/movie_dashboard_screen.dart';
import 'package:ui2/Screens/Notification/notification_screen.dart';
import 'package:ui2/Screens/ProfileScreens/ProfilesScreen/profile_screen.dart';
import 'package:ui2/Screens/Theater/TheaterScreen/theater_screen.dart';
import 'package:ui2/Screens/Theatres/theaters.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List screens = [
    const MovieDashboardScreen(),
    const NotificationScreen(),
    const FavouritesScreen(),
    const TheaterScreen(),
    const ProfileScreen(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: Colors.transparent,
        bottomNavigationBar: CircleNavBar(
          activeIcons: const [
            Icon(
              Icons.movie,
              color: Colors.white,
              size: 18,
            ),
            Icon(
              Icons.notifications_active,
              color: Colors.white,
              size: 18,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
              size: 18,
            ),
            Icon(
              Icons.video_chat_rounded,
              color: Colors.white,
              size: 18,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 18,
            ),
          ],
          inactiveIcons: const [
            Icon(
              Icons.movie,
              color: Colors.white,
              size: 18,
            ),
            Icon(
              Icons.notifications_active,
              color: Colors.white,
              size: 18,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
              size: 18,
            ),
            Icon(
              Icons.video_chat_rounded,
              color: Colors.white,
              size: 18,
            ),
            Icon(
              Icons.person,
              color: Colors.white,
              size: 18,
            ),
          ],
          color: const Color(0xff2e3350),
          circleColor: Colors.white,
          height: 60,
          circleWidth: 60,
          activeIndex: _currentIndex,
          circleShadowColor: const Color(0xff1F203D),
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
          cornerRadius: const BorderRadius.only(
            topLeft: Radius.circular(8),
            topRight: Radius.circular(8),
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
          elevation: 10,
          onTap: _onItemTapped,
          circleGradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.pink, Color.fromARGB(255, 254, 0, 85)],
          ),
        ),
        body: screens[_currentIndex]);
  }
}
