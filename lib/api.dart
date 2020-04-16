import 'package:appyoutube/model/Video.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';


const CHAVE_YOUTUBE_API = "AIzaSyAoV9DB32dWxDf0tauJDAFmFtxaC-L3LsA";
const ID_CANAL ="UCUccuEMBFvbl01u_h8jitVg";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api{
  Future<List<Video>> pesquisar(String pesquisa) async{
    http.Response response = await http.get(
        URL_BASE+"search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API"
            "&channelId=$ID_CANAL"
            "&q=$pesquisa"
    );
    if(response.statusCode == 200){
      Map<String, dynamic> dadosJason =jsonDecode(response.body);
      List<Video> videos = dadosJason["items"].map<Video>(
          (map){
            return Video.fromJson(map);
          }
      ).toList();
//      for(var video in videos){
//        print(video.titulo);
//      }
    return videos;
    }
    else print("Passou Perto");
  }
}