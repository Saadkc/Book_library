import 'package:flutter/material.dart';
import 'package:reading_book/Custom_widgets/custom_scaffold.dart';

class FindBooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: CustomScaffold(
        index: 1,
        height: divheight / 2 * 0.5,
        search: serachBox(),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(title: Text("Book1"),),
            ),
            Card(
              child: ListTile(title: Text("Book2"),),
            ),
            Card(
              child: ListTile(title: Text("Book3"),),
            ),
            Card(
              child: ListTile(title: Text("Book4"),),
            ),
          ],
        ),
      ),
    );
  }
}

Widget serachBox() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    padding: EdgeInsets.all(5.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40.0),
      color: Colors.white,
    ),
    child: TextField(
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        hintText: "Search Books",
        border: InputBorder.none,
        icon: Icon(Icons.search,size: 25), 
      ),
    ),
  );
}
