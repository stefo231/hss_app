import 'package:flutter/material.dart';
import 'package:hss_app/components/custom_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Login with',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                      fontSize: 20),
                ),
                SizedBox(
                  width: 10.0,
                )
              ],
            ),
            CustomIconButton(
              onTap: () {},
              buttonTitle: "Email",
              icon: FaIcon(
                FontAwesomeIcons.envelope,
                color: Colors.lightBlue,
              ),
            ),
            CustomIconButton(
              onTap: () {},
              buttonTitle: "Facebook",
              icon: FaIcon(
                FontAwesomeIcons.facebookF,
                color: Colors.blue,
              ),
            ),
            CustomIconButton(
              onTap: () {},
              buttonTitle: "Google",
              logo: Image.asset(
                "images/google_icon.png",
                width: 24.0,
              ),
              //icon: FaIcon(FontAwesomeIcons.google),
            ),
            CustomIconButton(
              onTap: () {},
              buttonTitle: "Apple",
              icon: FaIcon(FontAwesomeIcons.apple),
            ),
          ],
        ),
      ),
    );
  }
}
