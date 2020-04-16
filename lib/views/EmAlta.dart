import 'package:flutter/material.dart';

class EmAlta extends StatefulWidget {
  @override
  _inicialState createState() => _inicialState();
}

class _inicialState extends State<EmAlta> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Em Alta",
            style: TextStyle(
                fontSize: 28
            ),)
        ],
      ),
    );
  }
}
