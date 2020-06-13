import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:reading_book/Books.dart/books.dart';
import 'package:reading_book/pdf/firebase_ref.dart';
import 'package:reading_book/pdf/pdf_view.dart';

class LaunchFile {
  static void launchPDF(BuildContext context, String title, String pdfPath) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PDFScreen(title, pdfPath)),
    );
  }

  static Future<dynamic> loadFromFirebase(
      BuildContext context, String url) async {
    return FireStorageService.loadFromStorage(context, file);
  }

  static Future<dynamic> createFileFromPdfUrl(dynamic url) async {
    final filename =
        'flutterSlides.pdf'; //I did it on purpose to avoid strange naming conflicts
    print(filename);
    var request = await HttpClient().getUrl(Uri.parse(url));
    var response = await request.close();
    var bytes = await consolidateHttpClientResponseBytes(response);
    String dir = (await getApplicationDocumentsDirectory()).path;
    File file = new File('$dir/$filename');
    await file.writeAsBytes(bytes);
    return file;
  }
}
// Future<String> prepareTestPdf() async {
//   final ByteData bytes =
//       await DefaultAssetBundle.of(context).load(pdfPath);
//   final Uint8List list = bytes.buffer.asUint8List();

//   final tempDir = await getTemporaryDirectory();
//   final tempDocumentPath = '${tempDir.path}/$pdfPath';

//   final file = await File(tempDocumentPath).create(recursive: true);
//   file.writeAsBytesSync(list);
//   return tempDocumentPath;
// }
// prepareTestPdf().then((pdfPath){
//});
