import 'dart:convert';

import 'package:pilotoflutter/model/comments_table_model.dart';
import 'package:http/http.dart' as http;

class CommentsTableViewmodel {
  Future<List<CommentsTableModel>> fetchComments()async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/comments"));
    if(response.statusCode == 200){
      final List data = json.decode(response.body);
      return data.map((e) => CommentsTableModel.fromJson(e)).toList();
    }else{
      return throw("Erro");
    }
  }
}