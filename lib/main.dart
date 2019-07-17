import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'This is App - Title',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('This is Home - App Bar - Title'),
        ),
        body: const Center(
          child: const Text('This is Home - Body'),
        ),
      ),
    );
  }
}
