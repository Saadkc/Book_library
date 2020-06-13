import 'package:flutter/material.dart';
import 'package:reading_book/Books.dart/books.dart';
import 'package:reading_book/Home/home_page.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({Key key ,this.index}) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 5),
            child: IconButton(
                icon: Icon(
                  Icons.home,
                  size: 35,
                  color: index == 0
                      ? Colors.blue
                      : Colors.grey,
                ),
                onPressed: () {
                if (index != 0)
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => Homepage()));
              }),
              ),
          Padding(
            padding: const EdgeInsets.only(right: 40),
            child: IconButton(
              icon: Icon(Icons.library_books,
              color: index == 1 
              ? Colors.blue 
              : Colors.grey,
              ), 
              onPressed: (){
                if (index != 1)
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => FindBooks()));
              }),
          )
        ],
      ),
    );
  }
}