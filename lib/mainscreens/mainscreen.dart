import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trix_app/mainscreens/notes.dart';
import 'package:trix_app/mainscreens/questionpapers.dart';
import 'package:trix_app/mainscreens/syllabuscopy.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.notes),
                text: "Notes",
              ),
              Tab(icon: Icon(Icons.book), text: "Syllabus Copy"),
              Tab(
                  icon: Icon(Icons.book_online_outlined),
                  text: "Question Papers"),
            ],
          ),
          title: Text('Resources'),
        ),
        body: TabBarView(
          children: [
            ExamNotes(),
            SyllabusCopy(),
            QuestionPapers(),
          ],
        ),
      ),
    );
  }
}
