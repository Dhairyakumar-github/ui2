import 'package:flutter/material.dart';

class GradientSwitch extends StatefulWidget {
  @override
  _GradientSwitchState createState() => _GradientSwitchState();
}

class _GradientSwitchState extends State<GradientSwitch> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gradient Switch Example'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(
              () {
                isSwitched = !isSwitched;
              },
            );
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: 80,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              gradient: isSwitched
                  ? LinearGradient(
                      colors: [Colors.blue, Colors.purple],
                    )
                  : LinearGradient(
                      colors: [Colors.grey[400]!, Colors.grey[600]!],
                    ),
            ),
            padding: EdgeInsets.all(5),
            child: Stack(
              children: [
                AnimatedPositioned(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeIn,
                  left: isSwitched ? 40 : 0,
                  right: isSwitched ? 0 : 40,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
