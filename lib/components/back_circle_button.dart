import 'package:flutter/material.dart';

class BackCircleButton extends StatelessWidget {
  BackCircleButton({@required this.onTap});

  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(left: 40.0),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.blue,
          size: 30,
        ),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.grey[100],
          // color: Colors.white,
          // color: Color(0xFFDFE6EE),
          borderRadius: BorderRadius.circular(50),
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
