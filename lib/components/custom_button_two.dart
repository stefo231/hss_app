import 'package:flutter/material.dart';

class CustomButtonTwo extends StatelessWidget {
  CustomButtonTwo({
    @required this.title,
    @required this.subtitle,
    @required this.icon,
  });

  final String title;
  final String subtitle;
  final Icon icon;

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
                color: Colors.grey[400],
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Container(
            margin: EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                icon,
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
