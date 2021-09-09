import 'package:flutter/material.dart';
import 'package:grab_grip/features/browsing/screens/home_screen.dart';

void main() {
  runApp(GrabGripApp());
}

class GrabGripApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
