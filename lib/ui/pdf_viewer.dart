import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class PdfViewer extends StatefulWidget {
  String PdfPath;
  PdfViewer(this.PdfPath);
  @override
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  String url = "http://www.pdf995.com/samples/pdf.pdf";
  String pdfasset = "assets/sample.pdf";
  PDFDocument _doc;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await PDFDocument.fromURL(widget.PdfPath.toString());
    setState(() {
      _doc = doc;
      _loading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _loading ? Center(child: CircularProgressIndicator(),) : PDFViewer(
        document: _doc,
        indicatorBackground: Colors.red,
        // showIndicator: false,
        // showPicker: false,
      ),
    );
  }
}
