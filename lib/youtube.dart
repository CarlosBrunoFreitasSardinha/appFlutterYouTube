import 'package:appyoutube/views/Biblioteca.dart';
import 'package:appyoutube/views/EmAlta.dart';
import 'package:appyoutube/views/Inicial.dart';
import 'package:appyoutube/views/Inscricoes.dart';
import 'package:flutter/material.dart';

class YouTube extends StatefulWidget {
  @override
  _YouTubeState createState() => _YouTubeState();
}

class _YouTubeState extends State<YouTube> {
  int _selected = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicial(),
      EmAlta(),
      Inscricoes(),
      Biblioteca(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey, opacity: 1),

        title: Image.asset("images/youtube.png", width: 98,height: 22,),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.videocam),
              onPressed: (){}
              ),
          IconButton(
              icon: Icon(Icons.search),
              onPressed: (){}
          ),
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: (){}
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: telas[_selected],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selected,
          onTap: (indice){
            setState(() {
              _selected = indice;
            });
          },
          fixedColor: Colors.red,
          type: BottomNavigationBarType.fixed,
//        type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
//              backgroundColor: Colors.purple,
              title: Text("initial"),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
//              backgroundColor: Colors.orange,
              title: Text("Em Alta"),
              icon: Icon(Icons.whatshot),
            ),
            BottomNavigationBarItem(
              title: Text("Inscrições"),
//              backgroundColor: Colors.blue,
              icon: Icon(Icons.subscriptions),
            ),
            BottomNavigationBarItem(
//              backgroundColor: Colors.green,
              title: Text("Biblioteca"),
              icon: Icon(Icons.folder),
            ),
          ],
      ),
    );
  }
}
