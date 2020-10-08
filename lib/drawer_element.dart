import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerElement extends StatelessWidget {
  final IconData icon;
  final String text;

  DrawerElement({
    @required this.icon,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white70,
        ),
        SizedBox(width: 10.0),
        Text(
          text,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
