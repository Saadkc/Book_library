import 'package:flutter/material.dart';
import 'package:reading_book/Custom_widgets/custom_scaffold.dart';

class FindBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery.of(context).size.height;
    return SafeArea(
          child: CustomScaffold(
        index: 1,
        height: divheight / 2 *0.4,
        body: Text("Hello"),
      ),
    );
  }
}