import 'package:flutter/material.dart';
import 'package:reading_book/Custom_widgets/custom_appbar.dart';
import 'package:reading_book/Custom_widgets/custom_bottomappbar.dart';
import 'package:reading_book/Custom_widgets/custom_drawer.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final double height;
  final Widget image;

  final int index;

  CustomScaffold({@required this.body,this.image,this.height,@required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  CustomAppBAr(
          height: height,
          image: image,
        ),
        body: body,

        drawer: buildDrawer(),

        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.deepPurpleAccent,
          child: Icon(Icons.search)
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: CustomBottomAppBar(index: index),
    );
  }
}

