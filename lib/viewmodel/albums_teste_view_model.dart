import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pilotoflutter/model/albums_model.dart';
import 'package:pilotoflutter/model/albums_teste_model.dart';

class AlbumsTesteViewModel {
  Future<List<AlbumsTesteModel>> fetchAlbum() async{
    try{
      String url = "https://jsonplaceholder.typicode.com/albums";
      final response = await http.get(Uri.parse(url));
      if(response.statusCode == 200){
        final List dados = json.decode(response.body);
        return dados.map((e)=>AlbumsTesteModel.fromJson(e)).toList();
      }else{
        return throw("Erro");
      }
    }catch(e){
      return throw(e);
    }
  }
}