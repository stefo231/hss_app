import 'package:flutter/material.dart';
import 'package:hss_app/screens/home_screen.dart';
import 'package:hss_app/screens/login.dart';

import 'screens/login.dart';
import 'screens/login_doctor.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
// za polesna navigacija - comment / uncomment

          child: HomeScreen(),
          // child: LogInScreen(),
          // child: LogInScreenDoctor(),
        ),
      ),
    );
  }
}
