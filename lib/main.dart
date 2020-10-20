import 'package:flutter/material.dart';
// import 'package:hss_app/screens/helper.dart';
import 'package:hss_app/screens/home_screen.dart';
import 'package:hss_app/screens/welcome_screen.dart';
import 'screens/home_screen.dart';
import 'screens/login_email_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LogInEmailScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LogInEmailScreen.id: (context) => LogInEmailScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },

//       home: Scaffold(
//         body: SafeArea(
// // za polesna navigacija - comment / uncomment
//           child: WelcomeScreen(),
//           // child: HomeScreen(),

//           // child: LogInScreenDoctor(),
//           // child: Helper(),
//         ),
//       ),
    );
  }
}
