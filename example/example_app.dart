import 'package:flutter/material.dart';
import 'package:rounded_button/rounded_button.dart';

class ExampleApp extends StatefulWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  @override
  Widget build(BuildContext context) {
    return Center(child: RoundedButton(
      buttonName: 'Login',
      onTap: (){
        debugPrint('button clicked ');
      },
    ),);
  }
}
