import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({@required this.title, @required this.onTap});
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        //color: Colors.grey[300],
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
          // color: Colors.white,
          // color: Color(0xFFDFE6EE),
          //shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              blurRadius: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
