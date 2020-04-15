import 'package:flutter/material.dart';
import 'package:reading_book/Custom_widgets/custom_appbar.dart';
import 'package:reading_book/Custom_widgets/custom_bottomappbar.dart';
import 'package:reading_book/Custom_widgets/custom_drawer.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final double height;
  final Widget image;
  final Widget search;

  final int index;

  CustomScaffold({this.search,@required this.body,this.image,this.height,@required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:  CustomAppBAr(
          height: height,
          image: image,
          search: search,
        ),
        body: body,

        drawer: BuildDrawer(),

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

