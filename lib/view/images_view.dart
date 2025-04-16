import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImagesView extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Imagens"),
      ),
      body: Column(
      children: [
         Image.asset('assets/imgs/anyimage.jpg', width: 100, height: 100),
        Image.asset('assets/imgs/dog.jpg', width: 100, height: 100)

      ],
    ),
    );
  }
}