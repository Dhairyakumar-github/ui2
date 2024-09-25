import 'package:flutter/material.dart';

class MovieDashboardScreen extends StatelessWidget {
  const MovieDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Movie Dashboard",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
