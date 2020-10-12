import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    @required this.onTap,
    @required this.buttonTitle,
    this.icon,
    this.logo,
    @required this.emergencyTextColor,
  });

  final Function onTap;
  final String buttonTitle;
  final FaIcon icon;
  final Image logo;
  final bool emergencyTextColor; // i need to find a solution for this!

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   width: 100.0,
              // ),
              icon ?? logo,
              SizedBox(
                width: 15.0,
              ),
              Text(
                buttonTitle, //?BUTTON TEXT
                style: TextStyle(
                  color: emergencyTextColor ? Colors.red : Colors.grey[600],
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          margin: EdgeInsets.only(
            left: 40.0,
            right: 40.0,
          ),
          padding: EdgeInsets.only(
            top: 10.0,
            bottom: 10.0,
          ),
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
