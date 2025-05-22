import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pilotoflutter/model/user_transporte_model.dart';
import 'package:pilotoflutter/services/global_user.dart';
import 'package:pilotoflutter/view/details_user_trans_view.dart';
import 'package:pilotoflutter/viewmodel/user_transporte_viewmodel.dart';

class UserTransporteView extends StatefulWidget {
  @override
  _UserTransporteViewState createState() => _UserTransporteViewState();
}

class _UserTransporteViewState extends State<UserTransporteView> {
  final userTransporteViewmodel = UserTransporteViewmodel();
  late Future<List<UserTransporteModel>> userFuture;

  @override
  void initState() {
    super.initState();
    userFuture = userTransporteViewmodel.takeUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Users")),
      body: FutureBuilder(
        future: userFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Erro ao ler os dados"));
          } else if (snapshot.hasData && snapshot.data!.isEmpty) {
            return Center(child: Text("Sem dados"));
          }

          final data = snapshot.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onDoubleTap: () => {
                  GlobalUser.instance.user = data[index],
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailsUserTransView()))
                },
                child: ListTile(
                  title: Text("Dado"),
                  subtitle: Text("${data[index].userId}"),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
