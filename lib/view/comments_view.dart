import 'package:flutter/material.dart';
import 'package:pilotoflutter/viewmodel/comments_viewmodel.dart';
import 'package:pilotoflutter/model/comments_model.dart';

class CommentsView extends StatefulWidget {
  @override
  _CommentsViewState createState() => _CommentsViewState();
}

class _CommentsViewState extends State<CommentsView> {
  final commentViewModel = CommentsViewmodel();
  late Future<List<CommentsModel>> futureComment;

  @override
  void initState() {
    super.initState();
    futureComment = commentViewModel.fetchComments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dados")),
      body: FutureBuilder<List<CommentsModel>>(
        future: futureComment,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Erro: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("Sem dados"),);
          }

          final comments = snapshot.data!;
            return ListView.builder(
              itemCount: comments.length,
              itemBuilder: (context, index) {
                final comment = comments[index];
                return ListTile(
                  title: Text('${comment.id}'),
                  subtitle: Column(
                    children: [Text("${comment.id}"), Text("${comment.name}")],
                  ),
                );
              },
            );
        },
      ),
    );
  }
}
