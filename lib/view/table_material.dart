import 'package:flutter/material.dart';
import 'package:material_table_view/material_table_view.dart';

class TableMaterial extends StatelessWidget {
  const TableMaterial({super.key});

  bool noDataYetFor(int row) => false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tabela Estilizada')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: TableView.builder(
              columns: [
                const TableColumn(width: 80.0, freezePriority: 100),
                for (var i = 1; i < 6; i++) const TableColumn(width: 100),
              ],
              rowCount: 50,
              rowHeight: 56.0,
              rowBuilder: (context, row, contentBuilder) {
                if (noDataYetFor(row)) return null;

                final isEven = row % 2 == 0;

                return Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () => print('Linha $row clicada'),
                    child: Container(
                      color: isEven ? Colors.grey.shade100 : Colors.white,
                      child: contentBuilder(
                        context,
                        (context, column) => Center(
                          child: Text(
                            'R$row C$column',
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}