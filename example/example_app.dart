import 'package:flutter/material.dart';
import 'package:rounded_button/rounded_button.dart';

class ButtonExample extends StatefulWidget {
  const ButtonExample({Key? key}) : super(key: key);

  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ButtonExample> {
  @override
  Widget build(BuildContext context) {
    return Center(child: RoundedButton(
      buttonName: 'Login',
      width: 300,
      height: 52,
      borderWidth: 1.0,
      buttonColor: Colors.blue,
      onTap: (){
        debugPrint('button clicked ');
      },
    ),);
  }
}
