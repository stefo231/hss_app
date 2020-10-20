import 'package:flutter/material.dart';
import 'package:hss_app/components/custom_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'login_email_screen.dart';

class LoginPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[600],
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 26.0),
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
            SizedBox(height: 36.0),
            CustomIconButton(
              onTap: () {
                Navigator.pushNamed(context, LogInEmailScreen.id);
              },
              buttonTitle: "Email",
              icon: FaIcon(
                FontAwesomeIcons.envelope,
                color: Colors.lightBlue,
              ),
              emergencyTextColor: false,
            ),
            SizedBox(height: 36.0),
            CustomIconButton(
              onTap: () {},
              buttonTitle: "Facebook",
              icon: FaIcon(
                FontAwesomeIcons.facebookF,
                color: Colors.blue,
              ),
              emergencyTextColor: false,
            ),
            SizedBox(height: 36.0),
            CustomIconButton(
              onTap: () {},
              buttonTitle: "Google",
              logo: Image.asset(
                "images/google_icon.png",
                width: 24.0,
              ),
              emergencyTextColor: false,
              //icon: FaIcon(FontAwesomeIcons.google),
            ),
            SizedBox(height: 36.0),
            CustomIconButton(
              onTap: () {},
              buttonTitle: "Apple",
              icon: FaIcon(FontAwesomeIcons.apple),
              emergencyTextColor: false,
            ),
            SizedBox(height: 36.0),
          ],
        ),
      ),
    );
  }
}
