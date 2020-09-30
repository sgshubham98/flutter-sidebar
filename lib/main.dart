import 'package:flutter/material.dart';

import 'drawer.dart';
import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              DrawerScreen(),
              HomeScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
