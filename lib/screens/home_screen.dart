import 'package:flutter/material.dart';
import 'package:hss_app/components/circle_button.dart';
import 'package:hss_app/components/large_circle_button.dart';
import 'package:hss_app/components/custom_button_two.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'One'; // for drowdown

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
                      // print('Emergency SOS pressed.');
                      buildShowEmergencyDialog(context);
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

  Future buildShowEmergencyDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Container(
              padding: EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(360),
                color: Colors.red,
              ),
              child: Image.asset(
                'images/SOS_1.png',
                color: Colors.white,
                height: 75.0,
                width: 50.0,
              ),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(
                    'Emergency Call for',
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  DropdownButton(
                    items: <String>['One', 'Two', 'Three', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: Colors.red),
                        ),
                      );
                    }).toList(),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    // icon: Image.asset('images/plus_red.png'),
                    // iconSize: 24,
                    elevation: 16,
                    // style:
                    //     TextStyle(color: Colors.deepPurple),
                    // underline: Container(
                    //   height: 2,
                    //   color: Colors.deepPurpleAccent,
                    // ),
                  )
                ],
              ),
            ),
            actions: [FlatButton(onPressed: () {}, child: Text('Approve'))],
          );
        });
  }
}
