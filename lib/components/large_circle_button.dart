import 'package:flutter/material.dart';
import 'circle_button.dart';

class LargeCircleButton extends StatelessWidget {
  LargeCircleButton({this.title, this.img});

  final String title;
  final Image img;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        //color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleButton(
                onTap: () {
                  print('Health sensor pressed.');
                },
                img: img,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, top: 10.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
