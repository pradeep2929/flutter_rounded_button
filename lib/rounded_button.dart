library rounded_button;

import 'package:flutter/material.dart';

// Designed RoundedButton

class RoundedButton extends StatelessWidget {
  final String buttonName;
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
      this.height,
      this.bottomMargin = 24,
      this.borderWidth = 2,
      this.width,
      this.buttonColor,
      this.fontSize});

  static RoundedButton example() {
    return RoundedButton(
      buttonName: "ENTRAR",
      onTap: () {},
      width: 300,
      height: 50.0,
      bottomMargin: 10.0,
      borderWidth: 0.0,
      buttonColor: Colors.blue,
    );
  }

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
