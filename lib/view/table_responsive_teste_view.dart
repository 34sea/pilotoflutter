import 'package:flutter/material.dart';
import 'package:pilotoflutter/model/comments_table_model.dart';
import 'package:pilotoflutter/viewmodel/comments_table_viewmodel.dart';

class TableResponsiveTesteView extends StatefulWidget {
  @override
  _TableResponsiveTesteViewState createState() =>
      _TableResponsiveTesteViewState();
}

class _TableResponsiveTesteViewState extends State<TableResponsiveTesteView> {
  final commentsTableViewmodel = CommentsTableViewmodel();
  late Future<List<CommentsTableModel>> commentsFuture;
  @override
  void initState() {
    super.initState();
    commentsFuture = commentsTableViewmodel.fetchComments();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Responsive")),
      body: FutureBuilder(
        future: commentsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Erro"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("Sem dados"));
          } else {
            final commentsPosts = snapshot.data!.take(20);

            return Row(
              children: [Text("data"),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                width: MediaQuery.of(context).size.width,
                child: IntrinsicWidth(
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text("Id")),
                      DataColumn(label: Text("Name")),
                    ],
                    rows:
                        commentsPosts.map((e) {
                          return DataRow(
                            cells: [
                              DataCell(Text("${e.id}")),
                              DataCell(Text("${e.name}")),
                            ],
                          );
                        }).toList(),
                  ),
                ),
              ),
              )
            )],
            );
          }
        },
      ),
    );
  }
}
