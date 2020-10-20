import 'package:flutter/material.dart';
import 'package:hss_app/components/circle_button.dart';
import 'package:hss_app/components/custom_textinput.dart';
import 'package:hss_app/components/custom_button.dart';

import 'home_screen.dart';

class LogInEmailScreen extends StatefulWidget {
  static String id = "login_email_screen";
  @override
  _LogInEmailScreenState createState() => _LogInEmailScreenState();
}

class _LogInEmailScreenState extends State<LogInEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/group_372.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  img: Image.asset(
                    'images/left_arrow_blue.png',
                    width: 30.0,
                    height: 30.0,
                  ),
                ),
                SizedBox(height: 5.0),
                SizedBox(height: 5.0),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                CustomTextInput(
                  hintText: 'john.doe@email.com',
                ),
                Container(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                CustomTextInput(
                  hintText: 'password',
                  obscureText: true,
                ),
              ],
            ),
            CustomButton(
              title: "Login",
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
