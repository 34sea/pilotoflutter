import 'package:flutter/material.dart';
import 'package:material_table_view/material_table_view.dart';

class Mycustomtable extends StatelessWidget {
  const Mycustomtable({super.key});

  @override
  Widget build(BuildContext context) {
    const int numLinhas = 7;
    const int numColunas = 10;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabela com Scroll'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Table(
            border: TableBorder.all(),
            defaultColumnWidth: const FixedColumnWidth(100),
            children: List.generate(numLinhas, (linha) {
              return TableRow(
                children: List.generate(numColunas, (coluna) {
                  return Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Text('L${linha + 1} C${coluna + 1}'),
                  );
                }),
              );
            }),
          ),
        ),
      ),
    );
  }
}