import 'package:flutter/material.dart';

class CustomAppBAr extends StatelessWidget {
  final Widget body;
  final Widget image;
  final double height;
  CustomAppBAr({this.body , this.image,this.height});

  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery.of(context).size.height;
    var divwidth = MediaQuery.of(context).size.width;
    return Container(
      height: divheight,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: height,
                width: divwidth,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.black, blurRadius: 5.0),
                  ],
                  gradient: LinearGradient(colors: [
                    Colors.deepPurple,
                    Colors.black,
                  ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(70.0)),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            child: Text(
                              "Ssuet Book Library",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 40.0,
                top: 80.0,
                child: Container(
                  height: 150,
                  width: divwidth -100,
                  child: image,
                ),
              ),
            ],
          ),
          Expanded(child: body)
        ],
      ),
    );
  }
}

