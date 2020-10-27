import 'package:flutter/material.dart';
import 'package:hss_app/components/circle_button.dart';
import 'package:hss_app/components/large_circle_button.dart';
import 'package:hss_app/components/custom_button_two.dart';
// import 'package:hss_app/components/custom_icon_button.dart';
//slider
import 'package:slider_button/slider_button.dart';
import 'package:hss_app/components/custom_dialog.dart';

class HomeScreen extends StatefulWidget {
  static String id = "home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> options = <String>[
    'John Doe',
    'Catherine Doe',
    'Emilia Doe',
    'Ben Doe'
  ];
  String dropdownValue; // for drowdown

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/group_372.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // crossAxisAlignment: CrossAxisAlignment.center,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                  flex: 1,
                  child: LargeCircleButton(
                    img: Image.asset(
                      'images/video.png',
                      height: 70.0,
                      width: 70.0,
                    ),
                    title: 'Video',
                    emergencyTextPadding: false,
                    onTap: () {
                      print('Video pressed.');
                    },
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: LargeCircleButton(
                    img: Image.asset(
                      'images/booking.png',
                      height: 70.0,
                      width: 70.0,
                    ),
                    title: 'Booking',
                    emergencyTextPadding: false,
                    onTap: () {
                      print('Booking pressed.');
                    },
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LargeCircleButton(
                  img: Image.asset(
                    'images/SOS.png',
                    height: 70.0,
                    width: 70.0,
                  ),
                  title: 'Emergency \n SOS',
                  emergencyTextPadding: true,
                  //Dialog------------------------------------------------------------------------------------------------
                  onTap: () => buildShowSOSDialog(context),
                ),
                LargeCircleButton(
                  img: Image.asset(
                    'images/health_sensor.png',
                    height: 70.0,
                    width: 70.0,
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
    );
  }

//Emergency SOS Dialog !!
  Future buildShowSOSDialog(BuildContext context) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      barrierColor: Color(0x61bbdefb), // space around dialog

      builder: (context) {
        return CustomDialog(
          image: Image.asset('images/sos_red_circle.png', height: 150),
          content: "Emergency Call for",
          positiveBtnText: "Done",
          negativeBtnText: 'Cancel',
          //? the code below is to show second Dialog window
          onTap: () => showDialog(
            barrierDismissible: false,
            context: context,
            barrierColor: Color(0x8abbdefb),
            builder: (context) {
              return CustomDialog(
                title:
                    '    Are you sure \n you want to quit', // need to find solution
                content: 'SOS',
                positiveBtnText: "Yes",
                negativeBtnText: 'Cancel',
                selector: SizedBox(),

                onTap: () => {
                  Navigator.of(context).pop(),
                },
              );
            },
          ),
          //? the code above is to show second Dialog window
          //Todo------------u need to style the DropdownButton -----------------
          selector: Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20.0),
            child: Container(
              alignment: Alignment.center,
              height: 40.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
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
              //Todo --------------dropdown---
              child: DropdownButtonHideUnderline(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    dropdownValue == null
                        ? Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.check,
                            size: 30,
                            color: Colors.red,
                          ),
                    DropdownButton<String>(
                      value: dropdownValue,
                      isDense: true,
                      iconSize: 0,
                      hint: dropdownValue != null
                          ? null
                          : Text(
                              'Select Human',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                      onChanged: (String value) {
                        setState(() {
                          dropdownValue = value;
                        });
                      },
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      selectedItemBuilder: dropdownValue == null
                          ? null
                          : (BuildContext context) {
                              return options.map((String value) {
                                return Text(
                                  dropdownValue,
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold),
                                );
                              }).toList();
                            },
                      items:
                          options.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Row(
                            children: [
                              Text(
                                value,
                                style: TextStyle(
                                    inherit: false, color: Colors.black),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '(User)',
                                style: TextStyle(
                                    inherit: false, color: Colors.grey),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //Todo---------------------------------------------------------------
          sliderBtn: SliderButton(
            baseColor: Colors.red,
            buttonColor: Colors.blue[50],
            backgroundColor: Colors.red[50],
            boxShadow: BoxShadow(
                color: Colors.blue[50],
                offset: Offset(5.0, 5.0),
                blurRadius: 15.0,
                spreadRadius: 1.0),
            shimmer: false,
            height: 50,
            buttonSize: 50,
            action: () {
              ///Do something here
              Navigator.of(context).pop();
            },
            label: Text(
              "Request Ambulance",
              style: TextStyle(
                  color: Color(0xff4a4a4a),
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            icon: Image.asset('images/right_arrow_grey.png'),
          ),
        );
      },
    );
  }
}
