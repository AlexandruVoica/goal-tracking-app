import 'package:flutter/material.dart';

import 'views/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      debugShowCheckedModeBanner: false,
      color: Colors.black,
      title: 'abc',
      builder: (context, child) =>
          MyHomePage(title: 'Flutter Demo Homasde Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(33, 33, 37, 1.0),
      // color: Color.fromARGB(255, 35, 32, 37),
      child: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
          child: HomeLayout(),
        ),
      ),
    );
  }
}
