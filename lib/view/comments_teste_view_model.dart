import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pilotoflutter/model/comments_teste_model.dart';

class CommentsTesteViewModel {
  Future<List<CommentsTesteModel>> fetchComments() async{
    try{
      final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
      if(response.statusCode ==200){
        final List dados = json.decode(response.body);
        return dados.map((e)=>CommentsTesteModel.fromJson(e)).toList();
      }else{
        return throw("Erro");
      }
    }catch(e){
      return throw(e);
    }
  }
}