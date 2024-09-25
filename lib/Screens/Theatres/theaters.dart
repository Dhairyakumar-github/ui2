import 'package:flutter/material.dart';

class TheatersScreen extends StatelessWidget {
  const TheatersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Theaters",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
