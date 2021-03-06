import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  String _search;

  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          }),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          close(context, "");
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    //  print("resultado: pesquisa realizada");
    close(context, query);
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    /* print("resultado:digitado "+ query);
    List<String> lista = List();

    if (query.isNotEmpty) {
      lista = ["Android", "Android navegações", "IOS", "Jogos"
      ].where(
          (texto)=>texto.toLowerCase().startsWith(query.toLowerCase())
      ).toList();
      return ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(lista[index]),
              onTap: (){
                close(context, lista[index]);
              },
            );
          });
    } else {
      return Center(
        child: Text("Nenhum resultado para a pesquisa!"),
      );
    }*/
    return Container();
  }
}
