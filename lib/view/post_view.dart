import 'package:flutter/material.dart';
import 'package:pilotoflutter/view/details_api_view.dart';
import '../viewmodel/post_viewmodel.dart';
import '../model/post_model.dart';

class PostView extends StatefulWidget {
  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  final viewModel = PostViewModel();
  late Future<List<PostModel>> futurePosts;

  @override
  void initState() {
    super.initState();
    futurePosts = viewModel.fetchPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: FutureBuilder<List<PostModel>>(
        future: futurePosts,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Nenhum post encontrado.'));
          }

          final posts = snapshot.data!;
          return ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return ListTile(
                title: Text(post.title, textAlign: TextAlign.center,),
                subtitle: Column(
                  children: [
                    Text(post.body),
                    TextButton(
                      onPressed: () => {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailsApiView(items: post,)))
                      },
                      child: Text("Detalhes"),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
