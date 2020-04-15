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
    
    List<Widget> items = [
    ListTile(
      leading: Icon(
        Icons.library_books,
        color: Colors.black,
        size: 40,
      ),
      title: Text("Semister 1" ,style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text("Tap to open Books"),
      trailing: Icon(Icons.forward , size: 20, color: Colors.black,),
      onTap: (){
        Navigator.push(context, 
        MaterialPageRoute(builder: (context) => FindBooks()));
      },
    ),

    ListTile(
      leading: Icon(
        Icons.library_books,
        color: Colors.black,
        size: 40,
      ),
      title: Text("Semister 2",style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text("Tap to open Books"),
      trailing: Icon(Icons.forward , size: 20, color: Colors.black,),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        color: Colors.black,
        size: 40,
      ),
      title: Text("Semister 3",style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text("Tap to open Books"),
      trailing: Icon(Icons.forward , size: 20, color: Colors.black,),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        color: Colors.black,
        size: 40,
      ),
      title: Text("Semister 4",style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text("Tap to open Books"),
      trailing: Icon(Icons.forward , size: 20, color: Colors.black,),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        color: Colors.black,
        size: 40,
      ),
      title: Text("Semister 5",style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text("Tap to open Books"),
      trailing: Icon(Icons.forward , size: 20, color: Colors.black,),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        color: Colors.black,
        size: 40,
      ),
      title: Text("Semister 6",style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text("Tap to open Books"),
      trailing: Icon(Icons.forward , size: 20, color: Colors.black,),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        color: Colors.black,
        size: 40,
      ),
      title: Text("Semister 7",style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text("Tap to open Books"),
      trailing: Icon(Icons.forward , size: 20, color: Colors.black,),
    ),
    ListTile(
      leading: Icon(
        Icons.library_books,
        color: Colors.black,
        size: 40,
      ),
      title: Text("Semister 8",style: TextStyle(fontWeight: FontWeight.bold),),
      subtitle: Text("Tap to open Books"),
      trailing: Icon(Icons.forward , size: 20, color: Colors.black,),
    ),
  ];

    
    var divheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: CustomScaffold(
        index: 0,
          height: divheight / 2 * 0.9,
          image: imageSliderCarousel,
        body: ListWheelScrollView(
          itemExtent: 100,
          children: items,
          useMagnifier: true,
          magnification: 1.0,

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

// 