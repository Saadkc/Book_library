import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:reading_book/Books.dart/books.dart';
import 'package:reading_book/Custom_widgets/custom_scaffold.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double _height, _width;

  Widget customCard(Icon icon, String text, String subtext, Icon icons) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: _height * 0.01, horizontal: _width * 0.05),
      child: Card(
        elevation: 8,
        color: Colors.grey,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
        child: ListTile(
          leading: icon,
          title: Text(
            "$text",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "$subtext",
            style: TextStyle(color: Colors.black),
          ),
          trailing: icons,
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => FindBooks()));
          },
        ),
      ),
    );
  }

  Widget imageSliderCarousel (){
  return Container(
  child: Column(
    children: <Widget>[
      Container(
        height: _height * 0.30,
        width: _width,
        child: Carousel(
          boxFit: BoxFit.cover,
          images: [
            AssetImage("assets/images/book3.jpg"),
            AssetImage("assets/images/book4.jpg"),
            AssetImage("assets/images/book6.jpg"),
            AssetImage("assets/images/book2.jpeg"),
          ],
          showIndicator: false,
          borderRadius: true,
        ),
      ),
    ],
  ),
);
}


  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: CustomScaffold(
        index: 0,
        width: double.infinity,
        height: _height / 2 * 0.9,
        image: imageSliderCarousel(),
        body: ListView(
          children: <Widget>[
            customCard(Icon(
                    Icons.library_books,
                    size: _width * 0.09,
                    color: Colors.black,
                  ), "Semister 1", "Tap to open book", Icon(Icons.search)),
            customCard(Icon(
                    Icons.library_books,
                    size: _width * 0.09,
                    color: Colors.black,
                  ), "Semister 2", "Tap to open book", Icon(Icons.search)),
            customCard(Icon(
                    Icons.library_books,
                    size: _width * 0.09,
                    color: Colors.black,
                  ), "Semister 3", "Tap to open book", Icon(Icons.search)),
            customCard(Icon(
                    Icons.library_books,
                    size: _width * 0.09,
                    color: Colors.black,
                  ), "Semister 4", "Tap to open book", Icon(Icons.search)),
            customCard(Icon(
                    Icons.library_books,
                    size: _width * 0.09,
                    color: Colors.black,
                  ), "Semister 5", "Tap to open book", Icon(Icons.search)),
            customCard(Icon(
                    Icons.library_books,
                    size: _width * 0.09,
                    color: Colors.black,
                  ), "Semister 6", "Tap to open book", Icon(Icons.search)),
            customCard(Icon(
                    Icons.library_books,
                    size: _width * 0.09,
                    color: Colors.black,
                  ), "Semister 7", "Tap to open book", Icon(Icons.search)),
            customCard(Icon(
                    Icons.library_books,
                    size: _width * 0.09,
                    color: Colors.black,
                  ), "Semister 8", "Tap to open book", Icon(Icons.search)),
          ],
        ),
      ),
    );
  }
}

