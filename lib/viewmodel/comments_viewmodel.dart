import 'dart:convert';

import 'package:pilotoflutter/model/comments_model.dart';
import 'package:http/http.dart' as http;

class CommentsViewmodel {
  Future<List<CommentsModel>> fetchComments() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));

    if(response.statusCode == 200){
      final List listJson = json.decode(response.body);

      return listJson.map((e)=> CommentsModel.fromJson(e)).toList();
    }else{
      throw Exception('Erro ao carregar posts');
    }
  }
}