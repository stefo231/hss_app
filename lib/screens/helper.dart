import 'package:flutter/material.dart';

import '../components/dialogA.dart';

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
        child: Container(
          child: RaisedButton(
            child: Text('Button'),
            onPressed: () => showDialog(
                context: context,
                builder: (context) {
                  return DialogA(
                    title: "Here goes title",
                    content:
                        "Here goes the content of dialog. Here goes the content of dialog. Here goes the content of dialog.",
                    positiveBtnText: "Done",
                    negativeBtnText: "Cancel",
                    positiveBtnPressed: () {
                      // Do something here
                      Navigator.of(context).pop();
                    },
                  );
                }),
          ),
        ),
      ),
    );
  }
}

//!____________________________________________________________
