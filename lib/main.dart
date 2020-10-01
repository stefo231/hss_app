import 'package:flutter/material.dart';
import 'package:hss_app/screens/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Home(),
        ),
      ),
    );
  }
}
