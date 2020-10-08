import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sidebar/drawer.dart';
import 'package:sidebar/homescreen.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
      debugShowCheckedModeBanner: false,
      title: 'Sidebar',
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
