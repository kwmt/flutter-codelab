import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Welcom to Flutter'),
        ),
        body: new Center(
          child: new RandomWors(),
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWors> {
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }
}

class RandomWors extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new RandomWordsState();
}
