import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/post_model.dart';
import 'package:pilotoflutter/viewmodel/post_viewmodel.dart';


class PostPageView extends StatefulWidget {
  const PostPageView({super.key});

  @override
  State<PostPageView> createState() => _PostPageState();
}

class _PostPageState extends State<PostPageView> {
  final PostViewModel viewModel = PostViewModel();
  List<PostModel> allPosts = [];
  List<PostModel> filteredPosts = [];
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    viewModel.fetchPosts().then((posts) {
      setState(() {
        allPosts = posts;
        filteredPosts = posts;
      });
    });
  }

  void _filterPosts(String query) {
    setState(() {
      searchQuery = query;
      filteredPosts = allPosts.where((post) {
        return post.title.toLowerCase().contains(query.toLowerCase()) ||
               post.body.toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterPosts,
              decoration: const InputDecoration(
                labelText: 'Pesquisar',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: filteredPosts.isEmpty
                ? const Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: filteredPosts.length,
                    itemBuilder: (context, index) {
                      final post = filteredPosts[index];
                      return Card(
                        child: ListTile(
                          title: Text(post.title),
                          subtitle: Text(post.body),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
