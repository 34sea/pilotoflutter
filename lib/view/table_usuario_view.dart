import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/usuario_model.dart';
import 'package:pilotoflutter/viewmodel/usuario_viewmodel.dart';

class TableUsuarioView extends StatefulWidget {
  @override
  _TableUsuarioViewState createState() => _TableUsuarioViewState();
}

class _TableUsuarioViewState extends State<TableUsuarioView> {
  final usuarioViewmodel = UsuarioViewmodel();
  late Future<List<UsuarioModel>> futureUsers;
  @override
  void initState() {
    super.initState();
    futureUsers = usuarioViewmodel.fetchUsersl();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Table users")),
      body: FutureBuilder(
        future: futureUsers,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Erro: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return (Center(child: Text("Sem dados")));
          }

          final userPosts = snapshot.data!;

          return SingleChildScrollView(
            child: DataTable(
              columns: const [
                DataColumn(label: Text("name")),
                DataColumn(label: Text("Company name")),
              ],
              rows:
                  userPosts.map((e) {
                    return DataRow(
                      cells: [
                        DataCell(Text("${e.name}")),
                        DataCell(Text("${e.company.name}")),
                      ],
                    );
                  }).toList(),
            ),
          );
        },
      ),
    );
  }
}
