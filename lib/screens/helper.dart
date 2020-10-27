import 'package:flutter/material.dart';
import 'package:hss_app/components/custom_dialog.dart';

// import '../components/dialogA.dart';

class Helper extends StatefulWidget {
  static String id = "helper";
  @override
  _HelperState createState() => _HelperState();
}

class _HelperState extends State<Helper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: RaisedButton(
          child: Text('data'),
          onPressed: () => showDialog(
            context: context,
            barrierDismissible: false,
            barrierColor: Color(0x8abbdefb),
            builder: (context) {
              return CustomDialog(
                image: Image.asset('images/sos_red_circle.png', height: 50),
                content: "Emergency Call for",
                positiveBtnText: "Send",
                negativeBtnText: 'Cancel',
                //? not this below
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
                //? not this above
                selector: Container(
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 30,
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
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('images/sos_red_circle.png',
                                height: 20),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Person 1'),
                            SizedBox(
                              width: 150,
                            ),
                            Icon(
                              Icons.check_box,
                              color: Colors.green,
                            )
                          ],
                        ),
                        // color: Colors.lightBlue[50],
                      ),
                      //! ---carefull
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 30,
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
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('images/sos_red_circle.png',
                                height: 20),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Person 2'),
                            SizedBox(
                              width: 150,
                            ),
                            Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                          ],
                        ),
                        // color: Colors.lightBlue[50],
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 30,
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
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('images/sos_red_circle.png',
                                height: 20),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Person 3'),
                            SizedBox(
                              width: 150,
                            ),
                            Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                          ],
                        ),
                        // color: Colors.lightBlue[50],
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 30,
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
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset('images/sos_red_circle.png',
                                height: 20),
                            SizedBox(
                              width: 20,
                            ),
                            Text('Person 4'),
                            SizedBox(
                              width: 150,
                            ),
                            Icon(
                              Icons.close,
                              color: Colors.red,
                            )
                          ],
                        ),
                        // color: Colors.lightBlue[50],
                      ),
                      //! ---carefull
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

//!____________________________________________________________
// RaisedButton(
//             child: Text('Button'),
//             onPressed: () => showDialog(
//                 context: context,
//                 builder: (context) {
//                   return DialogA(
//                     title: "Here goes title",
//                     content:
//                         "Here goes the content of dialog. Here goes the content of dialog. Here goes the content of dialog.",
//                     positiveBtnText: "Done",
//                     negativeBtnText: "Cancel",
//                     positiveBtnPressed: () {
//                       // Do something here
//                       Navigator.of(context).pop();
//                     },
//                   );
//                 }),
//           ),
