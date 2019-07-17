import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart'; //Import External Package

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Word Pair App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Word Pair App'),
        ),
        body: Center(
          child: RandomWords()
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords> { //State Class

  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

class RandomWords extends StatefulWidget { //Stateful Widget

  @override
  RandomWordsState createState() => RandomWordsState(); // create it's State Class
}
