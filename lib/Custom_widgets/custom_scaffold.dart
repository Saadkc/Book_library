import 'package:flutter/material.dart';
import 'package:reading_book/Books.dart/books.dart';
import 'package:reading_book/Custom_widgets/custom_appbar.dart';
import 'package:reading_book/Custom_widgets/custom_bottomappbar.dart';
import 'package:reading_book/Custom_widgets/custom_drawer.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final double height;
  final double width;
  final Widget image;
  final Widget search;

  final int index;

  const CustomScaffold(
      {Key key,
      this.body,
      this.width,
      this.height,
      this.image,
      this.search,
      this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:
      appBar: CustomAppBAr(
        height: height,
        width: width,
        image: image,
        search: search,
      ),
      body: body,
      drawer: BuildDrawer(),

      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => FindBooks()));
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.search)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomAppBar(index: index),
    );
  }
}
