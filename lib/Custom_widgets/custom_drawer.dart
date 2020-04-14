import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

Widget buildDrawer() {
  return ClipPath(
    clipper: OvalRightBorderClipper(),
    child: Drawer(
      child: Container(
        padding: const EdgeInsets.only(left: 16.0, right: 40),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepPurple,
            Colors.black,
          ]),
        ),
        width: 300,
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                    color: Colors.deepPurple,
                    icon: Icon(
                      Icons.power_settings_new,
                      size: 35,
                    ),
                    onPressed: () {}),
              ),
              Container(
                  height: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Colors.pink,
                      Colors.black,
                    ])
                  ),
                  child: CircleAvatar(
                    radius: 40,
                  ),
                ),
              SizedBox(height: 5.0,),
              Text(
                "@coder.pk",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
