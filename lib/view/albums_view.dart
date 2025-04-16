import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/albums_model.dart';
import 'package:pilotoflutter/viewmodel/album_viewmodel.dart';

class AlbumsView extends StatefulWidget {
  @override
  _AlbumsViewState createState() => _AlbumsViewState();
}

class _AlbumsViewState extends State<AlbumsView> {
  final albumViewModel = AlbumViewmodel();
  late Future<List<AlbumsModel>> futureAlbum;

  void initState() {
    super.initState();
    futureAlbum = albumViewModel.fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(title: Text("Albums")),
        body: FutureBuilder(
          future: futureAlbum,
          builder: (context, snapsshot) {
            if (snapsshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (!snapsshot.hasData || snapsshot.data!.isEmpty) {
              return Center(child: Text("Nenhum dado encontrado"));
            } else if (snapsshot.hasError) {
              return Center(child: Text("Erro"));
            }

            final albums = snapsshot.data!;

            return ListView.builder(
              itemCount: albums.length,
              itemBuilder: (context, index) {
                final album = albums[index];

                return ListTile(
                  title: Text(album.title),
                  subtitle: Column(
                    children: [Text(album.title), Text('${album.userId}')],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
