import 'package:flutter/material.dart';
import '../view/lista_view.dart';
import '../view/post_view.dart';

class MeuMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(onPressed: 
        ()=>{
          Navigator.push(context, MaterialPageRoute(builder: (context) => ListaView()))
        }, child: Text('List items')),

        TextButton(onPressed: 
        ()=>{
          Navigator.push(context, MaterialPageRoute(builder: (context) => PostView()))
        }, child: Text('Api'))

        
      ],
    );
  }
}