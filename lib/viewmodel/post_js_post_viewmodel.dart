import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pilotoflutter/model/post_js_post_model.dart';
import 'package:pilotoflutter/model/post_model.dart';

class PostJsPostViewmodel {
  Future<void> sendData(PostJsPostModel dados) async {
    final base_url = Uri.parse("https://jsonplaceholder.typicode.com/posts");

    final response = await http.post(
      base_url,
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode({
        "userId": dados.userId,
        "id": dados.userId,
        "title": dados.title,
        "body": dados.body,
      }),
    );

    if (response.statusCode == 201) {
      print('Post criado com sucesso!');
      print('Resposta: ${response.body}');
    } else {
      print('Falha ao criar o post: ${response.statusCode}');
    }
  }
}
