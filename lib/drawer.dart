import 'package:flutter/material.dart';
import 'package:sidebar/drawer_element.dart';
import 'package:sidebar/constant.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: EdgeInsets.only(top: 30.0, left: 10.0, bottom: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(),
              SizedBox(width: 10.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Status/Anything',
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              DrawerElement(
                icon: Icons.home,
                text: 'Option 1',
              ),
              SizedBox(height: 20.0),
              DrawerElement(
                icon: Icons.person,
                text: 'Option 2',
              ),
              SizedBox(height: 20.0),
              DrawerElement(
                icon: Icons.headset_outlined,
                text: 'Option 3',
              ),
              SizedBox(height: 20.0),
              DrawerElement(
                icon: Icons.feedback,
                text: 'Option 4',
              ),
              SizedBox(height: 20.0),
              DrawerElement(
                icon: Icons.report,
                text: 'Option 5',
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.settings,
                color: Colors.white54,
              ),
              SizedBox(width: 2.0),
              Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                height: 20.0,
                width: 2.0,
                color: Colors.white70,
              ),
              SizedBox(width: 10.0),
              Text(
                'Log out',
                style: TextStyle(
                  color: Colors.white70,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
