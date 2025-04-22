import 'package:flutter/material.dart';
import 'package:pilotoflutter/view/comments_view.dart';
import 'package:pilotoflutter/view/operation_view.dart';
import 'package:pilotoflutter/view/posts_table_page_view.dart';
import 'package:pilotoflutter/view/return_data_view.dart';
import 'package:pilotoflutter/view/table_responsive_teste_view.dart';
import 'package:pilotoflutter/view/table_usuario_view.dart';
import 'package:pilotoflutter/view/usuario_view.dart';
import './view/lista_view.dart';
import './view/home_view.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white
    ),
    home: PostsTablePageView(),
  ));
}

