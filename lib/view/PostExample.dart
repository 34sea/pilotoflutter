import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostExample extends StatelessWidget {
  Future<void> sendPostRequest() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'title': 'foo',
        'body': 'bar',
        'userId': 1,
      }),
    );

    if (response.statusCode == 201) {
      print('Post criado com sucesso!');
      print('Resposta: ${response.body}');
    } else {
      print('Falha ao criar o post: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('POST Request')),
      body: Center(
        child: ElevatedButton(
          onPressed: sendPostRequest,
          child: Text('Enviar POST'),
        ),
      ),
    );
  }
}
