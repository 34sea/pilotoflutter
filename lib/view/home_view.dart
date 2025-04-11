import 'package:flutter/material.dart';
import '../components/meu_menu.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MVVM APP'),
      ),
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
        Image.asset('assets/logo.png', width: 100, height: 100)

      ],
    );
  }
}