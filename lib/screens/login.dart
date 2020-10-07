import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            //! TextField design needs to be complete!
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Ouch!');
                    //Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 40.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.blue,
                      size: 30,
                    ),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      // color: Colors.white,
                      // color: Color(0xFFDFE6EE),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[400],
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    onChanged: (value) {},
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    //!------------- Keep this --------------!//
                    // decoration: InputDecoration(
                    //   filled: true,
                    //   fillColor: Color(0xFFffffff),
                    //   hintText: 'john.doe@email.com',
                    //   hintStyle: TextStyle(color: Colors.grey),
                    //   border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.all(
                    //       Radius.circular(10.0),
                    //     ),
                    //     borderSide: BorderSide(style: BorderStyle.none),
                    //   ),
                    //   focusedBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.all(Radius.circular(10)),
                    //     borderSide:
                    //         BorderSide(width: 1, color: Colors.lightBlue[200]),
                    //   ),
                    // ),
                    //!------------- Keep this --------------!//

                    //?--- test ---?//
                    //enabled: false, //! to trigger dissabledBorder
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1, color: Colors.red),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1, color: Colors.orange),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: 1, color: Colors.lightBlue[200]),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 1,
                          )),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.black)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.yellowAccent)),
                      hintText: "john.doe@email.com",
                      hintStyle:
                          TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                    ),
                    //?--- test ---?//
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    onChanged: (value) {},
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    //?--- test ---?//
                    //enabled: false, //! to trigger dissabledBorder
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1, color: Colors.red),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(width: 1, color: Colors.orange),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(width: 1, color: Colors.lightBlue[200]),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            width: 1,
                          )),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.black)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                          borderSide:
                              BorderSide(width: 1, color: Colors.yellowAccent)),
                      hintText: "password",
                      hintStyle:
                          TextStyle(fontSize: 16, color: Color(0xFFB3B1B1)),
                    ),
                    //?--- test ---?//
                  ),
                ),
              ],
            ),

            GestureDetector(
              onTap: () {
                print('Ouch!');
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //color: Colors.grey[300],
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
