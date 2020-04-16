import 'package:appyoutube/api.dart';
import 'package:appyoutube/model/Video.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Inicial extends StatefulWidget {
  @override
  _inicialState createState() => _inicialState();
}

class _inicialState extends State<Inicial> {
  _listarVideos() {
    Api api = Api();
    return api.pesquisar("");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Video>>(
      future: _listarVideos(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            return Center(
              child: CircularProgressIndicator(),
            );
            break;
          case ConnectionState.active:
          case ConnectionState.done:
            if (snapshot.hasData) {
              return ListView.separated(
                  itemBuilder: (context, index){
                    List<Video> videos = snapshot.data;
                    Video video = videos[index];
                        return Column(
                          children: <Widget>[
                            Container(
                              height: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage(video.imagem),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            ListTile(
                              title: Text(video.titulo),
                              subtitle: Text(video.descricao),
                            ),
                          ],
                        );
                      },
                  separatorBuilder:
                      (context, index)=> Divider(
                        height: 3,
                        color: Colors.red,
                      ),
                  itemCount: snapshot.data.length,
              );
            } else
              return Center(
                child: Text("Nenhum dado Retornoado!"),
              );
            break;
        }
      },
    );
  }
}