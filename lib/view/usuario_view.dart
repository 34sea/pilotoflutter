import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pilotoflutter/model/usuario_model.dart';
import 'package:pilotoflutter/viewmodel/usuario_viewmodel.dart';

class UsuarioView extends StatefulWidget{
  @override
  _UsuarioViewState createState()=> _UsuarioViewState();
}

class _UsuarioViewState extends State<UsuarioView>{
  final usuarioViewmodel = UsuarioViewmodel();
  late Future<List<UsuarioModel>> user;

  @override
  void initState() {
    super.initState();
    user = usuarioViewmodel.fetchUsersl();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("USers"),
      ),
      body:FutureBuilder(future: user, builder: (context, snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: CircularProgressIndicator(),
          );
        }else if(snapshot.hasError){
          return Text("Erro ao buscar os dados ${snapshot.error}");
        }else if(!snapshot.hasData || snapshot.data!.isEmpty){
          return Text("Sem dados");
        }
        final usersData = snapshot.data!;

        return ListView.builder(
          itemCount: usersData.length,
          itemBuilder: (context, index){
            final userData = usersData[index];
            return ListTile(
              title: Text(userData.name),
              subtitle: Column(
                children: [
                  Text(userData.name),
                  Text("Company"),
                  Column(
                    children: [Text(userData.company.name), Text(userData.company.bs)],
                  )
                ],
              ),
            );
          });
      }),
    );
  }
}