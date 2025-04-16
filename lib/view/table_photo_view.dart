import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/table_photo_model.dart';
import 'package:pilotoflutter/viewmodel/table_photo_viewmodel.dart';

class TablePhotoView extends StatefulWidget {
  const TablePhotoView({super.key});

  @override
  State<TablePhotoView> createState() => _TablePhotoViewState();
}

class _TablePhotoViewState extends State<TablePhotoView> {
  late Future<List<TablePhotoModel>> futurePhotos;
  final viewModel = TablePhotoViewmodel();

  @override
  void initState() {
    super.initState();
    futurePhotos = viewModel.fetchPhoto();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lista de Fotos')),
      body: FutureBuilder<List<TablePhotoModel>>(
        future: futurePhotos,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            final photos = snapshot.data!.take(20).toList();

            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: const [
                    DataColumn(label: Text('ID')),
                    DataColumn(label: Text('Título')),
                  ],
                  rows:
                      photos.map((photo) {
                        return DataRow(
                          cells: [
                            DataCell(Text(photo.id.toString())),
                            DataCell(
                              SizedBox(width: 200, child: Text(photo.title)),
                            ),
                          ],
                        );
                      }).toList(),
                ),
              ),
            );
          } else {
            return const Center(child: Text('Nenhum dado encontrado'));
          }
        },
      ),
    );
  }
}
