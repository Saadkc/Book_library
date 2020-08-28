import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class BuildDrawer extends StatefulWidget {
  @override
  _BuildDrawerState createState() => _BuildDrawerState();
}

class _BuildDrawerState extends State<BuildDrawer> {
double _height , _width;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding:  EdgeInsets.only(left: _width * 0.04, right: _width * 0.05),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.black,
            ]),
          ),
          width: _width * 0.05,
          child: SafeArea(
            child: Column(
              children: <Widget>[
                SizedBox(height: _height * 0.09),
                Container(
                  height: _height * 0.13,
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
                  height: _height * 0.01,
                ),
                Text(
                  "SaAd Ali",
                  style: TextStyle(
                      fontSize: _width * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: _height * 0.09,
                ),
                Text(
                  "Follow on instagram",
                  style: TextStyle(
                      fontSize: _width * 0.05,
                      //fontWeight: FontWeight.bold,
                      color: Colors.purpleAccent),
                ),
                Text(
                  "@Coder Pk",
                  style: TextStyle(
                      fontSize: _width * 0.05,
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
