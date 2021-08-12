import 'package:flutter/material.dart';

class Greeting extends StatelessWidget {
  Greeting({Key? key, required this.name}) : super(key: key);

  final String name;

  static const TextStyle style = TextStyle(
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Good morning',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
