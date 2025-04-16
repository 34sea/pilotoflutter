import 'package:flutter/material.dart';
import 'package:pilotoflutter/components/menu_flow.dart';
import '../components/meu_menu.dart';
import '../view/images_view.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM APP'),
      ),
      endDrawer: MenuFlow(),
      body: MainPage()
    );
  }
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MeuMenu(),
        // Image.asset('assets/imgs/anyimage.jpg', width: 100, height: 100)
       
      ],
    );
  }
}