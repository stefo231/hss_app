import 'package:flutter/material.dart';

class CustomButtonTwo extends StatelessWidget {
  CustomButtonTwo({
    @required this.title,
    @required this.subtitle,
    this.icon,
    this.img,
  });

  final String title;
  final String subtitle;
  final Icon icon;
  final Image img;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Reminders taped');
      },
      child: Container(
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
          child: Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                icon ?? img,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Text(
                      subtitle,
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 50.0,
                  height: 50.0,
                )
              ],
            ),
          )),
    );
  }
}
