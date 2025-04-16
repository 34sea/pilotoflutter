import 'dart:convert';

import 'package:pilotoflutter/model/photos_model.dart';
import 'package:http/http.dart' as http;

class PhotoViewmodel {
  Future<List<PhotosModel>> fetchPhoto() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    if(response.statusCode == 200){
      final List dados = json.decode(response.body);
      return dados.map((e)=>PhotosModel.fromJson(e)).toList();
    }else{
      return throw("Erro");
    }
  }
}