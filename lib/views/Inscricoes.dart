import 'package:flutter/material.dart';

class Inscricoes extends StatefulWidget {
  @override
  _inicialState createState() => _inicialState();
}

class _inicialState extends State<Inscricoes> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Inscricoes",
            style: TextStyle(
                fontSize: 28
            ),)
        ],
      ),
    );
  }
}
