import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class SaveWordScreen extends StatelessWidget {
  var saveWords = [];

  SaveWordScreen({required this.saveWords});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Saved Screen')),
      body: Center(
          child: Text(
        saveWords.toString(),
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
