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
              color: Colors.grey[400],
              blurRadius: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
