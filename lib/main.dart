import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/login.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Screen Title')),
        body: SafeArea(
          child: LogInScreen(),
        ),
      ),
    );
  }
}
