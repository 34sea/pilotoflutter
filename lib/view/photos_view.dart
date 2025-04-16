import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/photos_model.dart';
import 'package:pilotoflutter/viewmodel/photo_viewmodel.dart';

class PhotosView extends StatefulWidget {
  @override
  _PhotosViewState createState() => _PhotosViewState();
}

class _PhotosViewState extends State<PhotosView> {
  final photoViewmodel = PhotoViewmodel();

  late Future<List<PhotosModel>> futurePhoto;

  @override
  void initState() {
    super.initState();
    futurePhoto = photoViewmodel.fetchPhoto();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: futurePhoto,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Erro ao buscar dados"));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text("Sem dados"));
        }
        

        final photos = snapshot.data!;

       return ListView.builder(
        itemCount: photos.length,
        itemBuilder: (context, index){
          final photo = photos[index];
          return ListTile(
            title: Text(photo.title),
            subtitle: Column(
              children: [
                Text(photo.url)
              ],
            ),
          );
        },
       );
      },
    );
  }
}
