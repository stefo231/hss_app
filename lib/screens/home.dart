import 'package:flutter/material.dart';
import 'package:hss_app/components/circle_button.dart';
import 'package:hss_app/components/large_circle_button.dart';
import 'package:hss_app/components/custom_button_two.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/group_372.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 40.0,
                      backgroundImage: AssetImage('images/hss_profile_pic.jpg'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome,',
                          style: TextStyle(color: Colors.blue),
                        ),
                        Text(
                          'Damjan',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        )
                      ],
                    ),
                    CircleButton(
                      onTap: () {
                        print('Open Menu!');
                      },
                      img: Image.asset(
                        'images/burger.png',
                        height: 35.0,
                        width: 35.0,
                      ),
                    )
                  ],
                ),
              ),
              CustomButtonTwo(
                img: Image.asset(
                  'images/reminder.png',
                  height: 55.0,
                  width: 55.0,
                ),
                title: "Reminders",
                subtitle: 'Have you taken your pills?',
              ),

              //FOUR CIRCULAR BUTTONS
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LargeCircleButton(
                    img: Image.asset(
                      'images/video.png',
                      height: 50.0,
                      width: 50.0,
                    ),
                    title: 'Video',
                    emergencyTextPadding: false,
                    onTap: () {
                      print('Video pressed.');
                    },
                  ),
                  LargeCircleButton(
                    img: Image.asset(
                      'images/booking.png',
                      height: 50.0,
                      width: 50.0,
                    ),
                    title: 'Booking',
                    emergencyTextPadding: false,
                    onTap: () {
                      print('Booking pressed.');
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  LargeCircleButton(
                    img: Image.asset(
                      'images/SOS.png',
                      height: 50.0,
                      width: 50.0,
                    ),
                    title: 'Emergency \n SOS',
                    emergencyTextPadding: true,
                    onTap: () {
                      print('Emergency SOS pressed.');
                    },
                  ),
                  LargeCircleButton(
                    img: Image.asset(
                      'images/health_sensor.png',
                      height: 50.0,
                      width: 50.0,
                    ),
                    title: 'Health \n sensor',
                    emergencyTextPadding: false,
                    onTap: () {
                      print('Health sensor pressed.');
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
