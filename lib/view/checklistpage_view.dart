import 'package:flutter/material.dart';

class ChecklistpageView extends StatefulWidget {
  const ChecklistpageView({super.key});

  @override
  State<ChecklistpageView> createState() => _ChecklistPageState();
}

class _ChecklistPageState extends State<ChecklistpageView> {

 final Map<String, bool> nonCriticalItems = {
    '1.Estado do assent': false,
    '2.Verificar a estrutura da máquina': false,
    '3.Verificar os manipulos das portas e janelas se estão operacionais': false,
  };

  final Map<String, bool> criticalItems = {
    '1.Verificar o estado dos vidros (se estiver com racha deve-se fazer avaliaçã': false,
    '2.Verificar a presença dos limpa brisas': false,
    '3.Verificar a presença da iluminação': false,
    '4.Verificar a presença dos espelhos principais': false,
  };

  // Campo de observações
  final TextEditingController observationController = TextEditingController();

  void submitChecklist() {
    print('✔️ Itens Não Críticos:');
    nonCriticalItems.forEach((key, value) {
      print('$key: ${value ? "OK" : "Pendente"}');
    });

    print('\n❗ Itens Críticos:');
    criticalItems.forEach((key, value) {
      print('$key: ${value ? "OK" : "Pendente"}');
    });

    print('\n📝 Observações: ${observationController.text}');

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text('Checklist enviado!'),
        content: Text('Obrigado por preencher o checklist.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  Widget buildChecklistSection(String title, Map<String, bool> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: title == 'Critical' ? Colors.red : Colors.green,
          ),
        ),
        SizedBox(height: 8),
        ...items.keys.map((item) {
          return CheckboxListTile(
            title: Text(item),
            value: items[item],
            onChanged: (value) {
              setState(() {
                items[item] = value ?? false;
              });
            },
          );
        }).toList(),
        SizedBox(height: 16),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Checklist de Manutenção')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  buildChecklistSection('Non-Critical', nonCriticalItems),
                  buildChecklistSection('Critical', criticalItems),
                  TextField(
                    controller: observationController,
                    maxLines: 4,
                    decoration: InputDecoration(
                      labelText: 'Observações',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: submitChecklist,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
