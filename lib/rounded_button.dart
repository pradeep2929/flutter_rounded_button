library rounded_button;

import 'package:flutter/material.dart';

// Designed RoundedButton

class RoundedButton extends StatelessWidget {
  final String buttonName;gi
  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final Color? buttonColor;
  final double? fontSize;

  final double bottomMargin;
  final double borderWidth;
  //passing props in react style
  RoundedButton(
      {this.buttonName = 'button',
      this.onTap,
      this.height = 52,
      this.bottomMargin = 10,
      this.borderWidth = 0.0,
      this.width = 300,
      this.buttonColor = Colors.blue,
      this.fontSize});


  @override
  Widget build(BuildContext context) {
    if (borderWidth != 0.0)
      return (new InkWell(
        onTap: onTap,
        child: new Container(
          width: width,
          height: height,
          margin: new EdgeInsets.only(bottom: bottomMargin),
          alignment: FractionalOffset.center,
          decoration: new BoxDecoration(
              color: buttonColor,
              borderRadius: new BorderRadius.all(const Radius.circular(25.0)),
              border: new Border.all(
                  color: const Color.fromRGBO(221, 221, 221, 1.0),
                  width: borderWidth)),
          child: new Text(buttonName,
              style: TextStyle(
                  color: const Color(0XFFFFFFFF),
                  fontSize: fontSize != null ? fontSize : 16.0,
                  fontWeight: FontWeight.bold)),
        ),
      ));
    else
      return (new InkWell(
        onTap: onTap,
        child: new Container(
          width: width,
          height: height,
          margin: new EdgeInsets.only(bottom: bottomMargin),
          alignment: FractionalOffset.center,
          decoration: new BoxDecoration(
            color: buttonColor,
            borderRadius: new BorderRadius.all(const Radius.circular(25.0)),
          ),
          child: new Text(buttonName,
              style: TextStyle(
                  color: const Color(0XFFFFFFFF),
                  fontSize: fontSize != null ? fontSize : 16.0,
                  fontWeight: FontWeight.bold)),
        ),
      ));
  }
}
