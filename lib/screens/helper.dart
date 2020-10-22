import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'dart:ui' as ui;

// import 'package:hss_app/components/circle_button.dart';

class Helper extends StatefulWidget {
  static String id = "helper";
  @override
  _HelperState createState() => _HelperState();
}

class _HelperState extends State<Helper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Icon(
            Icons.android_sharp,
            size: 60,
            color: Colors.grey[800],
          ),
          decoration: BoxDecoration(
            // color: Colors.grey[600],
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[600],
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
              BoxShadow(
                  color: Colors.white,
                  offset: Offset(-4.0, -4.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0),
            ],
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.grey[200],
                  Colors.grey[300],
                  Colors.grey[400],
                  Colors.grey[500],
                ],
                stops: [
                  0.1,
                  0.3,
                  0.8,
                  0.9,
                ]),
          ),
        ),
      ),
    );
  }
}

//!____________________________________________________________
