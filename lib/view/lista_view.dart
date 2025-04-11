import 'package:flutter/material.dart';
import '../viewmodel/lista_viewmodel.dart';
import '../view/detalhe_view.dart';
class ListaView extends StatelessWidget {
  final viewModel = ListaViewModel();

  @override
  Widget build(BuildContext context) {
    final itens = viewModel.getItens();

    return Scaffold(
      appBar: AppBar(title: Text('Lista MVVM')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Minha Lista:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: itens.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: TextButton(onPressed: ()=>{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> DetalheView(item: itens[index],)))
                    }, child: Column(
                      children: [Text(itens[index].nome)],
                    )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
