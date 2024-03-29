import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  CustomTextInput({this.hintText, this.obscureText});

  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[400],
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.white,
              blurRadius: 10.0,
              spreadRadius: 1.0,
            ),
            // BoxShadow(
            //   color: Colors.grey[100],
            //   blurRadius: 10.0,
            //   spreadRadius: 1.0,
            // ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
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
            ],
          ),
        ),
        child: TextField(
          onChanged: (value) {},
          obscureText: obscureText ?? false,
          autocorrect: false, //smth is wrong
          enableSuggestions: false, //smth is wrong
          style: TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),

            //enabled: true, //?to enable or disable TextInput

            //below this line is background styling
            // filled: true,
            // fillColor:
            //     Colors.white, //!something extra needs to be done, I need help

            //below this line is border styling
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                // BorderSide(color: Colors.blue),
                borderRadius: BorderRadius.circular(10.0)),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                // BorderSide(
                //   color: Colors.grey[300],
                // ),
                borderRadius: BorderRadius.circular(10.0)),
            disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.0)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                ),
                borderRadius: BorderRadius.circular(10.0)),
            errorText:
                null, //use this instead of null if needed --> "Ooops, something is not right!",
            errorStyle:
                TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
