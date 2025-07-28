import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/post_teste_model.dart';
import 'package:pilotoflutter/viewmodel/post_teste_view_model.dart';

class PostTesteView extends StatefulWidget {
  const PostTesteView({super.key});

  State<PostTesteView> createState() => _PostTesteViewState();
}

class _PostTesteViewState extends State<PostTesteView> {
  final PostTesteViewModel viewModel = PostTesteViewModel();
  late Future<List<PostTesteModel>> listPosts;
  @override
  void initState() {
    listPosts = viewModel.fetchPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: listPosts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Erro ao carregar os dados"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("Sem dados"));
          } else {
            final dados = snapshot.data!;

            return ListView.builder(
              itemCount: dados.length,
              itemBuilder: (context, index) {
                return ListTile(
                  subtitle: Column(children: [Text(dados[index].title)]),
                );
              },
            );
          }
        },
      ),
    );
  }
}
