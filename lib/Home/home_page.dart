import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:reading_book/Custom_widgets/custom_appbar.dart';
import 'package:reading_book/Custom_widgets/custom_scaffold.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Widget> items = [
    ListTile(
      leading: Icon(
        Icons.library_books,
        size: 40,
      ),
      title: Text("Semister 1"),
      subtitle: Text("Tap tp open Books"),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        size: 40,
      ),
      title: Text("Semister 2"),
      subtitle: Text("Tap tp open Books"),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        size: 40,
      ),
      title: Text("Semister 3"),
      subtitle: Text("Tap tp open Books"),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        size: 40,
      ),
      title: Text("Semister 4"),
      subtitle: Text("Tap tp open Books"),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        size: 40,
      ),
      title: Text("Semister 5"),
      subtitle: Text("Tap tp open Books"),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        size: 40,
      ),
      title: Text("Semister 6"),
      subtitle: Text("Tap tp open Books"),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        size: 40,
      ),
      title: Text("Semister 7"),
      subtitle: Text("Tap tp open Books"),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        size: 40,
      ),
      title: Text("Semister 8"),
      subtitle: Text("Tap tp open Books"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: CustomScaffold(
        index: null,
        body: CustomAppBAr(
          height: divheight /2 * 0.9,
          image: imageSliderCarousel,
          body: ListWheelScrollView(
            itemExtent: 100,
            children: items,
            useMagnifier: true,
          ),
        ),
      ),
    );
  }
}

Widget imageSliderCarousel = Container(
  child: Column(
    children: <Widget>[
      Container(
        height: 150,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage("assets/images/book1.jpg"),
            AssetImage("assets/images/book2.jpeg"),
            AssetImage("assets/images/book3.jpg"),
            AssetImage("assets/images/book4.jpg"),
            AssetImage("assets/images/book5.jpg"),
            AssetImage("assets/images/book6.jpg"),
          ],
          showIndicator: false,
          borderRadius: true,
        ),
      ),
    ],
  ),
);
