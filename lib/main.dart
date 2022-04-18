import 'package:flutter/material.dart';

import 'Screens/CalculatorWidget.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title : Text('Calculator'),
        ),
        body: CalculatorWidget(),

        ),
    );
  }
}
