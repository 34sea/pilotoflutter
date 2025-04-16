import 'dart:convert';

import 'package:pilotoflutter/model/photos_model.dart';
import 'package:http/http.dart' as http;
import 'package:pilotoflutter/model/table_photo_model.dart';

class TablePhotoViewmodel {
  Future<List<TablePhotoModel>> fetchPhoto() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    if(response.statusCode == 200){
      final List dados = json.decode(response.body);
      return dados.map((e)=>TablePhotoModel.fromJson(e)).toList();
    }else{
      return throw("Erro");
    }
  }
}

