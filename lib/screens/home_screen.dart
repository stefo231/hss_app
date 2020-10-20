import 'package:flutter/material.dart';
import 'package:hss_app/components/circle_button.dart';
import 'package:hss_app/components/large_circle_button.dart';
import 'package:hss_app/components/custom_button_two.dart';
import 'package:hss_app/components/custom_icon_button.dart';
//slider
import 'package:slider_button/slider_button.dart';
import 'package:hss_app/components/custom_dialog.dart';
import 'package:slider_button/slider_button.dart';

class HomeScreen extends StatefulWidget {
  static String id = "home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> options = ['John Doe', 'Catherine Doe', 'Emilia Doe', 'Ben Doe'];
  String dropdownValue = 'John Doe'; // for drowdown

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
                  onTap: () => showGeneralDialog(
                      barrierDismissible: false,
                      context: context,
                      barrierColor: Colors.black12, // space around dialog
                      transitionDuration: Duration(milliseconds: 800),
                      transitionBuilder: (context, a1, a2, child) {
                        return ScaleTransition(
                          scale: CurvedAnimation(
                              parent: a1,
                              curve: Curves.elasticOut,
                              reverseCurve: Curves.easeOutCubic),
                          child: CustomDialog(
                            // title: 'Here goes title',

                            image: Image.asset('images/sos_red_circle.png',
                                height: 150),
                            content: "Emergency Call for",
                            positiveBtnText: "Done",
                            negativeBtnText: 'Cancel',
                            //? the code below is to show second Dialog window
                            onTap: () => showGeneralDialog(
                                barrierDismissible: false,
                                context: context,
                                barrierColor: Colors.black38,
                                transitionDuration: Duration(milliseconds: 800),
                                transitionBuilder: (context, a1, a2, child) {
                                  return ScaleTransition(
                                    scale: CurvedAnimation(
                                        parent: a1,
                                        curve: Curves.elasticOut,
                                        reverseCurve: Curves.easeOutCubic),
                                    //? second Dialog window
                                    child: CustomDialog(
                                      title:
                                          '    Are you sure \n you want to quit', // need to find solution
                                      content: 'SOS',
                                      positiveBtnText: "Yes",
                                      negativeBtnText: 'Cancel',
                                      selector: SizedBox(),

                                      onTap: () => {
                                        Navigator.of(context).pop(),
                                        //print('object')
                                      },
                                    ),
                                    //?-----------------------
                                  );
                                },
                                pageBuilder: (BuildContext context,
                                    Animation animation,
                                    Animation secondaryAnimation) {
                                  return null;
                                }),
                            //? the code above is to show second Dialog window
                            //Todo------------u need to style the DropdownButton -----------------
                            selector: Container(
                              child: DropdownButton(
                                value: dropdownValue,
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                style: TextStyle(color: Colors.red),
                                selectedItemBuilder: (BuildContext context) {
                                  return options.map((String value) {
                                    return Text(
                                      dropdownValue,
                                      style: TextStyle(color: Colors.red),
                                    );
                                  }).toList();
                                },
                                items: options.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                            //Todo---------------------------------------------------------------
                            sliderBtn: SliderButton(
                              baseColor: Colors.grey,
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
                          ),
                        );
                      },
                      pageBuilder: (BuildContext context, Animation animation,
                          Animation secondaryAnimation) {
                        return null;
                      }),
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
}
