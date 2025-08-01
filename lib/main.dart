import 'package:flutter/material.dart';
import 'package:pilotoflutter/view/Dialog_view.dart';
import 'package:pilotoflutter/view/PostExample.dart';
import 'package:pilotoflutter/view/albums_teste_view.dart';
import 'package:pilotoflutter/view/comments_teste_view.dart';
import 'package:pilotoflutter/view/comments_view.dart';
import 'package:pilotoflutter/view/operation_view.dart';
import 'package:pilotoflutter/view/post_js_post_view.dart';
import 'package:pilotoflutter/view/post_teste_view.dart';
import 'package:pilotoflutter/view/posts_table_page_view.dart';
import 'package:pilotoflutter/view/return_data_view.dart';
import 'package:pilotoflutter/view/scroll_bar_example.dart';
import 'package:pilotoflutter/view/table_responsive_teste_view.dart';
import 'package:pilotoflutter/view/table_usuario_view.dart';
import 'package:pilotoflutter/view/user_transporte_view.dart';
import 'package:pilotoflutter/view/usuario_view.dart';
import './view/lista_view.dart';
import './view/home_view.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Colors.white
    ),
    home: AlbumsTesteView(),
  ));
}

