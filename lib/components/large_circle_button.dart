import 'package:flutter/material.dart';
import 'circle_button.dart';

class LargeCircleButton extends StatelessWidget {
  LargeCircleButton({
    this.img,
    this.title,
    @required this.onTap,
    @required this.emergencyTextPadding,
  });

  final Image img;
  final String title;
  final Function onTap;
  final bool emergencyTextPadding; // i need to find a solution for this!

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleButton(
              onTap: onTap,
              img: img,
            ),
            Padding(
              padding: emergencyTextPadding
                  ? const EdgeInsets.only(
                      // left: 15.0,
                      top: 10.0,
                    )
                  : const EdgeInsets.only(
                      left: 15.0,
                      top: 10.0,
                    ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: emergencyTextPadding ? Colors.red : Colors.grey[700],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
