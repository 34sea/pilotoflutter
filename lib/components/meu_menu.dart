import 'package:flutter/material.dart';
import 'package:pilotoflutter/components/teste_material.dart';
import 'package:pilotoflutter/view/albums_view.dart';
import 'package:pilotoflutter/view/checklistpage_view.dart';
import 'package:pilotoflutter/view/comments_view.dart';
import 'package:pilotoflutter/view/double_scrooll_table_view.dart';
import 'package:pilotoflutter/view/google_maps_view.dart';
import 'package:pilotoflutter/view/images_view.dart';
import 'package:pilotoflutter/view/photos_view.dart';
import 'package:pilotoflutter/view/post_page_view.dart';
import 'package:pilotoflutter/view/table_material.dart';
import 'package:pilotoflutter/view/table_photo_view.dart';
import 'package:pilotoflutter/view/table_post_view.dart';
import 'package:pilotoflutter/view/usuario_view.dart';
import '../view/lista_view.dart';
import '../view/post_view.dart';

class MeuMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListaView()),
                ),
              },
          child: Text('List items'),
        ),

        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostView()),
                ),
              },
          child: Text('Api'),
        ),
        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImagesView()),
                ),
              },
          child: Text("Imagens"),
        ),

        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GoogleMapsView()),
                ),
              },
          child: Text("Google maps"),
        ),
        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChecklistpageView()),
                ),
              },
          child: Text("Checklist"),
        ),

        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TableMaterial()),
                ),
              },
          child: Text("Tables"),
        ),
        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TesteMaterial()),
                ),
              },
          child: Text("Teste Material"),
        ),

        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DoubleScroollTableView(),
                  ),
                ),
              },
          child: Text("double scroll"),
        ),

        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommentsView()),
                ),
              },
          child: Text("Comments"),
        ),

        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AlbumsView()),
                ),
              },
          child: Text("Albums"),
        ),

        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhotosView()),
                ),
              },
          child: Text("Photos"),
        ),

        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TablePhotoView()),
                ),
              },
          child: Text("Tables api"),
        ),

        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TablePostView()),
                ),
              },
          child: Text("Tables apiv2"),
        ),

        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostPageView()),
                ),
              },
          child: Text("PostViewModel"),
        ),

        TextButton(
          onPressed:
              () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UsuarioView()),
                ),
              },
          child: Text("Usuario"),
        ),  
      ],
    );
  }
}
