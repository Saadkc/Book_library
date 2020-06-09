import 'package:flutter/material.dart';
import 'package:reading_book/Home/home_page.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery.of(context).size.height;
    var divwidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: divheight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.blue],
            ),
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20,),
              Container(
                height: divheight / 2,
                width: divwidth - 100,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/L3.png"),
                        fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                        shape: BoxShape.rectangle
                    ),
                    height: divheight / 2,
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text("Made By Coder.pk",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white54)),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("Follow for more Updates",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white54)),
              SizedBox(
                height: 50.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Homepage()));
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
