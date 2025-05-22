import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pilotoflutter/services/global_data.dart';

class DetailsItemsView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return 
      Scaffold(appBar: AppBar(
        title: Text("Items"),
      ),
      body: Text("Teste: ${GlobalData.instance.id}"),);
    
  }
}