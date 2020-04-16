import 'package:flutter/material.dart';

class Biblioteca extends StatefulWidget {
  @override
  _inicialState createState() => _inicialState();
}

class _inicialState extends State<Biblioteca> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Biblioteca",
            style: TextStyle(
                fontSize: 28
            ),)
        ],
      ),
    );
  }
}
