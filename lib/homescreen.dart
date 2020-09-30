import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffSet = 0;
  double yOffSet = 0;
  double scaleFactor = 1;
  bool drawerStatus = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      color: Colors.white,
      transform: Matrix4.translationValues(xOffSet, yOffSet, 0)
        ..scale(scaleFactor),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              drawerStatus
                  ? IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                      ),
                      onPressed: () {
                        setState(() {
                          xOffSet = 0.0;
                          yOffSet = 0.0;
                          scaleFactor = 1.0;
                          drawerStatus = false;
                        });
                      })
                  : IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        setState(() {
                          xOffSet = 240;
                          yOffSet = 160;
                          scaleFactor = 0.6;
                          drawerStatus = true;
                        });
                      },
                    ),
              Text(
                'SideBar/Hide Menu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications,
                ),
                onPressed: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
