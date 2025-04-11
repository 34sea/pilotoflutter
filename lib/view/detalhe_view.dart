import 'package:flutter/material.dart';
import '../model/item_model.dart';

class DetalheView extends StatelessWidget {
  final ItemModel item;

  const DetalheView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes')),
      body: Center(
        child: Text(
          'Id: ${item.id}\nNome: ${item.nome}',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
