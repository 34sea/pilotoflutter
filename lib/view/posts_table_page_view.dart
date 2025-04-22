import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostsTablePageView extends StatefulWidget {
  @override
  _PostsLikeTablePageState createState() => _PostsLikeTablePageState();
}

class _PostsLikeTablePageState extends State<PostsTablePageView> {
  List posts = [];
  bool loading = true;

  @override
  void initState() {
    super.initState();
    fetchPosts();
  }

  Future<void> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      setState(() {
        posts = json.decode(response.body).take(5).toList();
        loading = false;
      });
    } else {
      throw Exception('Erro ao buscar posts');
    }
  }

  Widget buildHeader() {
    return Container(
      color: Colors.grey[300],
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          headerCell('Type'),
          headerCell('Container'),
          headerCell('From'),
          headerCell('To'),
          headerCell('Time'),
          headerCell('Distance'),
          headerCell('Action'),
        ],
      ),
    );
  }

  Widget headerCell(String text) {
    return Expanded(
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget dataRow(Map post) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Expanded(child: Icon(Icons.article)),
          Expanded(child: Text('Post ${post['id']}', textAlign: TextAlign.center)),
          Expanded(child: Text(post['title'].toString().substring(0, 10), textAlign: TextAlign.center)),
          Expanded(child: Text(post['body'].toString().substring(0, 10), textAlign: TextAlign.center)),
          Expanded(child: Text('${post['id'] * 2} min', textAlign: TextAlign.center)),
          Expanded(child: Text('${post['id'] * 3} km', textAlign: TextAlign.center)),
          Expanded(
            child: IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                    title: Text('Post ${post['id']}'),
                    content: Text(post['body']),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Fechar'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget spacingRow() {
    return Container(
      height: 16,
      color: Colors.white, // totalmente branco, sem borda
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tabela Manual com Column & Row')),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
                width: 800, 
                child: ListView(
                  padding: EdgeInsets.all(8),
                  children: [
                    buildHeader(),
                    for (var post in posts) ...[
                      dataRow(post),
                      spacingRow(),
                    ],
                  ],
                ),
              ),
            ),
    );
  }
}
