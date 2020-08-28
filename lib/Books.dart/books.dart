import 'dart:io';
import 'package:flutter/material.dart';
import 'package:reading_book/Custom_widgets/custom_scaffold.dart';
import 'package:reading_book/pdf/fetch_pdf_firebase.dart';
 
String file = "Semister1/";
 
class FindBooks extends StatefulWidget {
  @override
  _FindBooksState createState() => _FindBooksState();
}

class _FindBooksState extends State<FindBooks> {
  static String pathPDF = "";

  double _height, _width;

  @override
  void initState() {
    super.initState();

    //Fetch file from FirebaseStorage first
    LaunchFile.loadFromFirebase(context, file)
        //Creating PDF file at disk for ios and android & assigning pdfUrl for web
        .then((url) => LaunchFile.createFileFromPdfUrl(url).then(
              (f) => setState(
                () {
                  if (f is File) {
                    pathPDF = f.path;
                  } 
                },
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: CustomScaffold(
        height: _height / 2 * 0.45,
        width: double.infinity,
        index: 1,
        search: Padding(
          padding: EdgeInsets.symmetric(horizontal: _width * 0.05, vertical: _height * 0.02),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Padding(
                  padding:  EdgeInsets.only(left: _width * 0.035),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: _width * 0.06,
                  ),
                ),
                hintText: "Seach Books not available yet",
                contentPadding:  EdgeInsets.only(left: _width * 0.0,bottom: _height * 0.0015),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding:  EdgeInsets.symmetric(vertical: _height * 0.02, horizontal: _width *  0.05),
              child: Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: _width * 0.02),
                child: ListTile(
                  leading: Container(
                    child: ClipRRect(
                      child: InkWell(
                        child: Image.asset('assets/images/book3.jpg'),
                        onTap: () => LaunchFile.launchPDF(
                        context, "Flutter Slides", pathPDF),
                       ),
                    ),
                  ),
                  title: Text(
                    "Calculus",
                    style: TextStyle(fontSize: _width * 0.05),
                  ),
                  subtitle: Text("Rating"),
                  onTap: () => LaunchFile.launchPDF(
                        context, "Flutter Slides", pathPDF),
                  // trailing: openPDFButton(context),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget openPDFButton(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            padding:  EdgeInsets.symmetric(horizontal: _width * 0.05),
            color: Colors.blue,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  LaunchFile.launchPDF(context, "Flutter Slides", pathPDF);
                });
              },
              child: Text(
                "Open pdf",
                style: TextStyle(fontSize: _width * 0.05),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
