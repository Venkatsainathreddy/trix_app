import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class ExamNotes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<ExamNotes> {
  bool _isLoading = false, _isInit = true;
  PDFDocument document;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Expanded(
          child: Center(
            child: _isInit
                ? Text('Press button to load PDF File')
                : _isLoading
                    ? Center(
                        child: CircularProgressIndicator(),
                      )
                    : PDFViewer(
                        document: document,
                      ),
          ),
        ),
        Row(mainAxisSize: MainAxisSize.max, children: <Widget>[
          Expanded(
              child: MaterialButton(
                  child: Text('URL'),
                  onPressed: () {
                    loadFromURL();
                  }))
        ])
      ],
    ));
  }

  loadFromURL() async {
    setState(() {
      _isInit = false;
      _isLoading = true;
    });

    document = await PDFDocument.fromURL(
        "http://www.africau.edu/images/default/sample.pdf");
    setState(() {
      _isLoading = false;
    });
  }
}
