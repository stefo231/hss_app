import 'package:flutter/material.dart';
import 'package:hss_app/components/custom_button.dart';

class CustomDialog extends StatelessWidget {
  CustomDialog({
    this.title,
    this.image,
    @required this.content,
    @required this.positiveBtnText,
    @required this.negativeBtnText,
    this.positiveBtnPressed,
    @required this.onTap,
    this.onBtnTap,
    this.sliderBtn,
    this.selector,
  });

  final String title, content, positiveBtnText, negativeBtnText;
  final GestureTapCallback positiveBtnPressed;
  final Function onTap;
  final Function onBtnTap;
  final Widget sliderBtn;
  final Widget selector;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildDialogContent(context),
    );
  }

  Widget _buildDialogContent(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        // Bottom rectangular box,
        Container(
          margin: EdgeInsets.only(top: 40),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: EdgeInsets.only(top: 60, left: 20, right: 20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              image ??
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.lightBlue[400],
                    ),
                  ),
              SizedBox(height: 16),
              Text(
                content,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 36),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              // here comes selector
              selector,

              SizedBox(height: 16),
              sliderBtn ??
                  // only for second dialog
                  CustomButton(
                    title: positiveBtnText,
                    onTap: () => {
                      Navigator.of(context).pop(),
                      Navigator.of(context).pop()
                      //print('object')
                    },
                  ),

              // ButtonBar( //keep this
              //   buttonMinWidth: 100,
              //   alignment: MainAxisAlignment.center,
              //   children: [

              //   ],
              // ),
              SizedBox(height: 16),
            ],
          ),
        ),

        // Top circle view //? it should be written below to appear above
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            maxRadius: 40,
            backgroundColor: Colors.grey[50],
            child: Image.asset(
              'images/cross_red.png',
              height: 30,
            ),
          ),
        )
      ],
    );
  }
}
