import 'package:flutter/material.dart';
import 'package:hss_app/screens/helper.dart';
import 'package:hss_app/screens/home_screen.dart';

import 'package:hss_app/screens/welcome_screen.dart';

import 'screens/login_doctor_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {'/': (context) => HomeScreen()},

      home: Scaffold(
        body: SafeArea(
// za polesna navigacija - comment / uncomment
          child: WelcomeScreen(),
          // child: HomeScreen(),

          // child: LogInScreenDoctor(),
          // child: Helper(),
        ),
      ),
    );
  }
}
