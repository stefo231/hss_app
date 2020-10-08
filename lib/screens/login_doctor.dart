import 'package:flutter/material.dart';
import 'package:hss_app/components/back_circle_button.dart';
import 'package:hss_app/components/custom_textinput.dart';
import 'package:hss_app/components/custom_button.dart';

class LogInScreenDoctor extends StatefulWidget {
  @override
  _LogInScreenDoctorState createState() => _LogInScreenDoctorState();
}

class _LogInScreenDoctorState extends State<LogInScreenDoctor> {
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackCircleButton(
                  onTap: () {
                    print('Ouch!');
                    //Navigator.pop(context);
                  },
                ),
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
                print('Ouch!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
