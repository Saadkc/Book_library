import 'package:flutter/material.dart';
import 'package:reading_book/Custom_widgets/custom_bottomappbar.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;
  final int index;

  CustomScaffold({@required this.body, @required this.index});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: body,
        bottomNavigationBar: CustomBottomAppBar(index: null),
      ),
    );
  }
}
