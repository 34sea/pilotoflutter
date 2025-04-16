import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/post_model.dart';
import 'package:pilotoflutter/viewmodel/post_viewmodel.dart';

class TablePostView extends StatefulWidget {
  @override
  _TablePostViewState createState()=> _TablePostViewState();
}

class _TablePostViewState extends State<TablePostView>{
  final postViewModel = PostViewModel();
  late Future<List<PostModel>> futurePost;
  @override
  void initState(){
    super.initState();
    futurePost = postViewModel.fetchPosts();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Tables"),
      ),
      body: FutureBuilder(future: futurePost, builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
        }else if(!snapshot.hasData || snapshot.data!.isEmpty){
          return Center(
            child: Text("Sem dados"),
          );
        }else if(snapshot.hasError){
          return Center(
            child: Text("Erro"),
          );
        }

        final post = snapshot.data!.take(20);

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(columns: 
          const [
            DataColumn(label: Text("Id")),
            DataColumn(label: Text("Title")),
          ]
          , rows: post.map((e){
            return DataRow(cells: [
              DataCell(Text("${e.id}")),
              DataCell(Text("${e.title}"))
            ]);
          }).toList()
          ),
        );

      }),
    );
  }
}