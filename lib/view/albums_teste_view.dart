import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/albums_teste_model.dart';
import 'package:pilotoflutter/viewmodel/albums_teste_view_model.dart';

class AlbumsTesteView extends StatefulWidget{
  AlbumsTesteView({super.key});
  State<AlbumsTesteView> createState()=> _AlbumsTesteViewState();
  
}

class _AlbumsTesteViewState extends State<AlbumsTesteView>{
  final AlbumsTesteViewModel viewModel = AlbumsTesteViewModel();
  late Future<List<AlbumsTesteModel>> listAll;
  @override
  void initState() {
    listAll = viewModel.fetchAlbum();
    super.initState();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: FutureBuilder(future: listAll, builder: (context, snapshots){
        if(snapshots.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
        }else if(snapshots.hasError){
          return Center(
            child: Text("Erro ao carregar"),
          );
        }else if(!snapshots.hasData || snapshots.data!.isEmpty){
          return Center(
            child: Text("Sem dados"),
          );
        }else{
          final dados = snapshots.data!;
          return ListView.builder(
            itemCount: dados.length,
            itemBuilder: (context, index){
            return ListTile(
              subtitle: Column(
                children: [
                  Text(dados[index].id.toString())
                ],
              ),
            );
          });
        }
      }),
    );
  }
}