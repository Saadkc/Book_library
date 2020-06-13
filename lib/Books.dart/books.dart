import 'dart:io';
import 'package:flutter/material.dart';
import 'package:reading_book/Custom_widgets/custom_scaffold.dart';
import 'package:reading_book/pdf/fetch_pdf_firebase.dart';
bool value = true;
 
String file = "Semister1/Calculus.pdf" ;
 
class FindBooks extends StatefulWidget {
  @override
  _FindBooksState createState() => _FindBooksState();
}

class _FindBooksState extends State<FindBooks> {
  static String pathPDF = "";

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
    return SafeArea(
      child: CustomScaffold(
        height: MediaQuery.of(context).size.height / 4.6,
        width: double.infinity,
        index: 1,
        search: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                hintText: "Seach Books not available yet",
                contentPadding: const EdgeInsets.only(left: 10.0),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: 5),
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
                    style: TextStyle(fontSize: 20),
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
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            color: Colors.blue,
            child: FlatButton(
              onPressed: () {
                setState(() {
                  LaunchFile.launchPDF(context, "Flutter Slides", pathPDF);
                });
              },
              child: Text(
                "Open pdf",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
