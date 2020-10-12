import 'package:flutter/material.dart';
//!----------
import 'package:hss_app/components/custom_dialog.dart';
import 'package:slider_button/slider_button.dart';

//!-----------^
class Helper extends StatefulWidget {
  @override
  _HelperState createState() => _HelperState();
}

class _HelperState extends State<Helper> {
  String dropdownValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: FlatButton(
        child: Text('Dialog'),
        //!you need below ------------------------- v
        onPressed: () => showGeneralDialog(
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
                  image: Image.asset('images/sos_red_circle.png', height: 150),
                  content: "Emergency Call for",
                  positiveBtnText: "Done",
                  negativeBtnText: 'Cancel',
                  onTap: () {
                    // Do something here
                    Navigator.of(context).pop();
                  },
                  //!u need to fix this selector Stefan
                  selector: DropdownButton(
                    value: dropdownValue,
                    elevation: 16,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'John Doe',
                      'Catherine Doe',
                      'Emilia Doe',
                      'Ben Doe'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),

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
        //!you need above -------------- ^
      ),
    ));
  }
}
