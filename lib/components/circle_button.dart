import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  CircleButton({@required this.onTap, this.img, this.icon});

  final Function onTap;
  final Image img;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: EdgeInsets.only(left: 40.0),
        child: img ?? icon,
        padding: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          // color: Colors.grey[100],
          color: Colors.white,
          // color: Color(0xFFDFE6EE),
          borderRadius: BorderRadius.circular(100),

          boxShadow: [
            BoxShadow(
                color: Colors.blue[100],
                offset: Offset(5.0, 5.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            BoxShadow(
                color: Colors.grey[100],
                offset: Offset(5.0, 5.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white54,
                Colors.white38,
                Colors.white38,
                Colors.white54,
              ],
              stops: [
                0.1,
                0.3,
                0.7,
                0.9,
              ]),
        ),
      ),
    );
  }
}
