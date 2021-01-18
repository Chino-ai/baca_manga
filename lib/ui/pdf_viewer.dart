import 'package:flutter/material.dart';
/*import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';*/
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfViewer extends StatefulWidget {
  String PdfPath;
  PdfViewer(this.PdfPath);
  @override
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {
  /*String url = "http://www.pdf995.com/samples/pdf.pdf";
  String pdfasset = "assets/sample.pdf";*/
  /*PDFDocument _doc;*/
  SfPdfViewer _sfPdfViewer;
  bool _loading;

  /*@override
  void initState() {
    super.initState();
    _initPdf();
  }

  _initPdf() async {
    setState(() {
      _loading = true;
    });
    final doc = await SfPdfViewer.network(widget.PdfPath.toString());
    setState(() {
      _sfPdfViewer = doc;
      _loading = false;
    });
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SfPdfViewer.network(widget.PdfPath.toString())
    );
  }
}
