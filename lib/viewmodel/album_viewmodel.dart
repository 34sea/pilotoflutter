import 'dart:convert';

import 'package:pilotoflutter/model/albums_model.dart';
import 'package:http/http.dart' as http;

class AlbumViewmodel {
  Future<List<AlbumsModel>> fetchAlbum() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums"));
    if(response.statusCode == 200){
      final List jsonDecode = json.decode(response.body);
      return jsonDecode.map((e)=>AlbumsModel.fromJson(e)).toList();
    }else{
      return throw("Erro");
    }
  }
}