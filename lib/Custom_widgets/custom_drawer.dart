import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class BuildDrawer extends StatefulWidget {
  @override
  _BuildDrawerState createState() => _BuildDrawerState();
}

class _BuildDrawerState extends State<BuildDrawer> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/images/download.png")),
            gradient: LinearGradient(colors: [
              Colors.deepPurple,
              Colors.black,
            ]),
          ),
          width: 300,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(height: 40.0),
                Container(
                  height: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(colors: [
                        Colors.pink,
                        Colors.black,
                      ])),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://drive.google.com/uc?id=1qi3Nc1yWNtqHUg2W6OoDVaJvDSrZ9TWT"),
                    radius: 40,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "SaAd Ali",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  "Follow on instagram",
                  style: TextStyle(
                      fontSize: 25,
                      //fontWeight: FontWeight.bold,
                      color: Colors.purpleAccent),
                ),
                Text(
                  "@Coder Pk",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
