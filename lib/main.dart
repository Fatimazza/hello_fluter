import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Routing Navigation',
    initialRoute: '/',
    routes: {
      '/' : (context) => PageRoutingApp(),
      FirstPage.routeName : (context) => FirstPage(),
      SecondPage.routeName : (context) => SecondPage(),
    },
  )
);

class PageRoutingApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Routing App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Routing App'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              RaisedButton(
                child: Text('Page A'),
                onPressed: () {
                  //move to another page, can be back
                  Navigator.pushNamed(context, FirstPage.routeName);
                },
              ),
              RaisedButton(
                child: Text ('Page B'),
                onPressed: () {
                  //move to another page, can NOT be back
                  Navigator.pushReplacementNamed(context, SecondPage.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {

  static const String routeName = '/firstPage';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('A First Page'),
        ),
        body: Center(
          child: RaisedButton(child: Text('Back'), onPressed: () {
            Navigator.pop(context);
          }),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {

  static const String routeName = '/secondPage';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('B Second Page'),
        ),
        body: Center(
          child: Text('B Second Page'),
        ),
      ),
    );
  }
}
