import 'package:flutter/material.dart';

class CustomAppBAr extends StatelessWidget implements PreferredSizeWidget {
  final Widget image;
  final double height;
  final Widget search;
  final double width;
  CustomAppBAr({this.width,this.search, this.image, this.height, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery.of(context).size.height;
    var divwidth = MediaQuery.of(context).size.width;
    return Stack(
      children: <Widget>[
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black, blurRadius: 5.0),
            ],
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
              Colors.black,
              Colors.blue,
            ]),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0.0),
                bottomRight: Radius.circular(70.0)),
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                    child: IconButton(
                        color: Colors.white,
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "SSUET Book Library",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          left: 40.0,
          top: 80.0,
          child: Container(
            height: divheight / 2 * 0.7,
            width: divwidth - 100,
            child: image,
          ),
        ),
        Positioned(
          top: 80.0,
          child: Container(
            height: 70,
            width: divwidth -20,
            child: search,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
