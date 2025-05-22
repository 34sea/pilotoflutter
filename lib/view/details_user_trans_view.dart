import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pilotoflutter/services/global_user.dart';

class DetailsUserTransView extends StatelessWidget{
  final user = GlobalUser.instance.user;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teste"),
      ),
      body: Center(
        child: user!= null?Column(
          children: [Text(user!.title)],
        ):Text("Sem user"),
      ),
    );
  }
}