import 'package:flutter/material.dart';

class TablesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tabela Moderna')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowColor: MaterialStateProperty.all(Colors.blueGrey[100]),
              dataRowColor: MaterialStateProperty.all(Colors.grey[50]),
              columns: const [
                DataColumn(label: Text('Nome')),
                DataColumn(label: Text('Idade')),
                DataColumn(label: Text('País')),
              ],
              rows: const [
                DataRow(cells: [
                  DataCell(Text('Ana')),
                  DataCell(Text('23')),
                  DataCell(Text('Moçambique')),
                ]),
                DataRow(cells: [
                  DataCell(Text('Carlos')),
                  DataCell(Text('30')),
                  DataCell(Text('Angola')),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
