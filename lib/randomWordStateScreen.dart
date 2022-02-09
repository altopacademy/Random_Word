import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'saveWordScreen.dart';

class RandomWord extends StatefulWidget {
  const RandomWord({Key? key}) : super(key: key);

  @override
  _RandomWordState createState() => _RandomWordState();
}

class _RandomWordState extends State<RandomWord> {
  var randomWord = WordPair.random();
  var saveWords = [];

  void _changeWord() {
    setState(() {
      randomWord = WordPair.random();
    });
  }

  void _saveWord() {
    saveWords.add(randomWord);
    print(saveWords);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SaveWordScreen(
                  saveWords: saveWords,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Random World Pertama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(randomWord.asString, style: TextStyle(fontSize: 24.0)),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: _saveWord,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeWord,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
