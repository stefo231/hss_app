import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //! Initial template code.
          FlatButton(onPressed: () {}, child: Text('circle btn back')),
          Text('Email'),
          TextField(),
          Text('Password'),
          TextField(),
          FlatButton(onPressed: () {}, child: Text('Login'))
        ],
      ),
    );
  }
}
