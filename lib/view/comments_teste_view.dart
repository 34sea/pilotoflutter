import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/comments_teste_model.dart';
import 'package:pilotoflutter/view/comments_teste_view_model.dart';

class CommentsTesteView extends StatefulWidget {
  CommentsTesteView({super.key});
  State<CommentsTesteView> createState() => _CommentsTesteViewState();
}

class _CommentsTesteViewState extends State<CommentsTesteView> {
  final CommentsTesteViewModel viewmodel = CommentsTesteViewModel();
  late Future<List<CommentsTesteModel>> listAll;

  @override
  void initState() {
    listAll = viewmodel.fetchComments();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: listAll,
        builder: (context, snapshots) {
          if (snapshots.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshots.hasError) {
            return Center(child: Text("Erro ao carregar os dados"));
          } else if (!snapshots.hasData || snapshots.data!.isEmpty) {
            return Center(child: Text("Sem dados"));
          } else {
            final dados = snapshots.data!.take(20).toList();
            return ListView.builder(
              itemCount: dados.length,
              itemBuilder: (context, index) {
                return ListTile(
                  subtitle: Column(children: [Text(dados[index].name)]),
                );
              },
            );
          }
        },
      ),
    );
  }
}
