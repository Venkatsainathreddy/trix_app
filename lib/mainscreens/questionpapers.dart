import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionPapers extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<QuestionPapers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: FirebaseFirestore.instance.collection("MLRPdfs").snapshots(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemCount: snapshot.data.documents.length,
          itemBuilder: (context, index) {
            DocumentSnapshot MLRPdfs = snapshot.data.documents[index];
            return ListTile(
              leading: Image.network(MLRPdfs['img']),
              title: Text(MLRPdfs['name']),
              subtitle: Text(MLRPdfs['detail']),
            );
          },
        );
      },
    ));
  }
}
