import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/post_model.dart';

class DetailsApiView extends StatelessWidget {

  final PostModel items;

  DetailsApiView({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: Column(
        children: [
          Text('Id: ${items.id}\n-------------------------'),
          Text('Titulo: ${items.title}\n-------------------------'),
          Text('Body: ${items.body}\n-------------------------'),
        ],
      ),
    );
  }
}
