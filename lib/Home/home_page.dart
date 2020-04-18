import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:reading_book/Books.dart/books.dart';
import 'package:reading_book/Custom_widgets/custom_scaffold.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var divheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: CustomScaffold(
        index: 0,
        width: double.infinity,
        height: divheight / 2 * 0.9,
        image: imageSliderCarousel,
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
              child: Card(
                elevation: 8,
                color: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text("Semester 1" ,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Tap to find books" , style: TextStyle(color: Colors.black),),
                  trailing: Icon(
                    Icons.fast_forward,
                    size: 20,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => FindBooks()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16),
              child: Card(
                elevation: 8,
                color: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text("Semester 2" ,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Tap to find books" , style: TextStyle(color: Colors.black),),
                  trailing: Icon(
                    Icons.fast_forward,
                    size: 20,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => FindBooks()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16),
              child: Card(
                elevation: 8,
                color: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text("Semester 3" ,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Tap to find books" , style: TextStyle(color: Colors.black),),
                  trailing: Icon(
                    Icons.fast_forward,
                    size: 20,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => FindBooks()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16),
              child: Card(
                elevation: 8,
                color: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text("Semester 4" ,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Tap to find books" , style: TextStyle(color: Colors.black),),
                  trailing: Icon(
                    Icons.fast_forward,
                    size: 20,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => FindBooks()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 16),
              child: Card(
                elevation: 8,
                color: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text("Semester 5" ,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Tap to find books" , style: TextStyle(color: Colors.black),),
                  trailing: Icon(
                    Icons.fast_forward,
                    size: 20,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => FindBooks()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16),
              child: Card(
                elevation: 8,
                color: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text("Semester 6" ,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Tap to find books" , style: TextStyle(color: Colors.black),),
                  trailing: Icon(
                    Icons.fast_forward,
                    size: 20,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => FindBooks()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16),
              child: Card(
                elevation: 8,
                color: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text("Semester 7" ,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Tap to find books" , style: TextStyle(color: Colors.black),),
                  trailing: Icon(
                    Icons.fast_forward,
                    size: 20,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => FindBooks()));
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 16),
              child: Card(
                elevation: 8,
                color: Colors.grey,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                child: ListTile(
                  leading: Icon(
                    Icons.library_books,
                    size: 40,
                    color: Colors.black,
                  ),
                  title: Text("Semester 8" ,style: TextStyle(fontWeight: FontWeight.bold),),
                  subtitle: Text("Tap to find books" , style: TextStyle(color: Colors.black),),
                  trailing: Icon(
                    Icons.fast_forward,
                    size: 20,
                    color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => FindBooks()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget imageSliderCarousel = Container(
  child: Column(
    children: <Widget>[
      Container(
        height: 160,
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

//
