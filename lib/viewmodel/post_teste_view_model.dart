import 'dart:convert';

import 'package:pilotoflutter/model/post_teste_model.dart';
import 'package:http/http.dart' as http;

class PostTesteViewModel {
  Future<List<PostTesteModel>> fetchPosts() async{
    try{
      final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if(response.statusCode == 200){
        final List dados = json.decode(response.body);
        return dados.map((e)=>PostTesteModel.fromJson(e)).toList();
      }else{
        return throw("Erro");
      }
    }catch(e){
      return throw(e);
    }
  }
}