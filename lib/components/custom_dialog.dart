import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  CustomDialog({
    this.title,
    this.image,
    @required this.content,
    @required this.positiveBtnText,
    @required this.negativeBtnText,
    this.positiveBtnPressed,
    @required this.onTap,
    this.sliderBtn,
    this.selector,
  });

  final String title, content, positiveBtnText, negativeBtnText;
  final GestureTapCallback positiveBtnPressed;
  final Function onTap;
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
                    style: Theme.of(context).textTheme.headline5,
                  ),
              SizedBox(height: 16),
              Text(
                content,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16),
              // here comes selector
              selector,

              SizedBox(height: 16),
              sliderBtn ??
                  ButtonBar(
                    buttonMinWidth: 100,
                    alignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        child: Text(positiveBtnText),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                    ],
                  ),
              SizedBox(height: 16),
            ],
          ),
        ),

        // Top circle view //! it should be written below to appear above
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
