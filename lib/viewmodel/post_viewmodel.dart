import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/post_model.dart';

class PostViewModel {
  Future<List<PostModel>> fetchPosts() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    if (response.statusCode == 200) {
      final List jsonData = json.decode(response.body);
      return jsonData.map((e) => PostModel.fromJson(e)).toList();
    } else {
      throw Exception('Erro ao carregar posts');
    }
  }
}
