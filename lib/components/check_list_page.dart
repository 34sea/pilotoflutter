// import 'package:flutter/material.dart';
// import 'package:yard_flow/utils/colors_utils.dart';
// import 'package:yard_flow/view/operations_list_view.dart';

// class ChecklistPage extends StatefulWidget {
//   const ChecklistPage({super.key});

//   @override
//   State<ChecklistPage> createState() => _ChecklistPageState();
// }

// class _ChecklistPageState extends State<ChecklistPage> {
//   final Map<String, bool> nonCriticalItems = {
//     '1.Estado do assento': false,
//     '2.Verificar a estrutura da máquina': false,
//     '3.Verificar os manipulos das portas e janelas se estão operacionais':
//         false,
//   };

//   final Map<String, bool> criticalItems = {
//     '1.Verificar o estado dos vidros (se estiver com racha deve-se fazer avaliação)':
//         false,
//     '2.Verificar a presença dos limpa brisas': false,
//     '3.Verificar a presença da iluminação': false,
//     '4.Verificar a presença dos espelhos principais': false,
//   };

//   final Color minhaCorPrimaria = const Color(0xFF2C306F);

//   final TextEditingController observationController = TextEditingController();

//   void submitChecklist() {
//     print('Itens Não Críticos:');
//     nonCriticalItems.forEach((key, value) {
//       print('$key: ${value ? "OK" : "Pendente"}');
//     });

//     print('\nItens Críticos:');
//     criticalItems.forEach((key, value) {
//       print('$key: ${value ? "OK" : "Pendente"}');
//     });

//     print('\nObservações: ${observationController.text}');

//     bool hasCriticalMarked = criticalItems.values.any((selected) => selected);

//     if (hasCriticalMarked) {
//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           title: const Text('Alerta Crítico'),
//           content: const Text(
//             'Aguarde Operador Coordenador / Instrução de manutenção',
//             style: TextStyle(fontSize: 16),
//           ),
//           actionsAlignment: MainAxisAlignment.end,
//           actions: [
//             TextButton.icon(
//               onPressed: () => Navigator.pop(context),
//               icon: const Icon(Icons.check, color: Colors.black),
//               label: const Text(
//                 'OK',
//                 style: TextStyle(color: Colors.black),
//               ),
//             ),
//             TextButton.icon(
//               onPressed: () => Navigator.pop(context),
//               icon: const Icon(Icons.phone, color: Colors.redAccent),
//               label: const Text(
//                 'Ligar',
//                 style: TextStyle(color: Colors.redAccent),
//               ),
//             ),
//           ],
//         ),
//       );
//     } else {
//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           title: Text('Checklist Enviado'),
//           content: Text('Checklist executado com sucesso.'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.pop(context);
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (context) => OperationsListView()));
//               },
//               child: Text('Continuar'),
//             ),
//           ],
//         ),
//       );
//     }
//   }

//   Widget buildChecklistSection(String title, Map<String, bool> items) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: TextStyle(
//             fontSize: 15,
//             fontWeight: FontWeight.bold,
//             color: title == 'Critical'
//                 ? Colors.red
//                 : Theme.of(context).colorScheme.primary,
//           ),
//         ),
//         SizedBox(height: 8),
//         ...items.keys.map((item) {
//           return CheckboxListTile(
//             title: Text(item),
//             value: items[item],
//             onChanged: (value) {
//               setState(() {
//                 items[item] = value ?? false;
//               });
//             },
//           );
//         }).toList(),
//         SizedBox(height: 16),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           margin: EdgeInsets.all(8.0),
//           child: Text(
//             'Checklist',
//             style: TextStyle(
//                 color: Theme.of(context).colorScheme.primary,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16),
//           ),
//         ),
//         buildChecklistSection('Non-Critical', nonCriticalItems),
//         buildChecklistSection('Critical', criticalItems),
//         TextField(
//           controller: observationController,
//           maxLines: 4,
//           decoration: InputDecoration(
//             labelText: 'Observações',
//             border: OutlineInputBorder(),
//           ),
//         ),
//         SizedBox(height: 20),
//         Container(
//           width: double.infinity,
//           padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             TextButton(
//               onPressed: submitChecklist,
//               style: TextButton.styleFrom(
//                 backgroundColor: Theme.of(context).colorScheme.primary,
//                 foregroundColor: Colors.white,
//                 side: BorderSide(
//                     color: Theme.of(context).colorScheme.primary, width: 1),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(0),
//                 ),
//                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//               ),
//               child: Text('Submit'),
//             )
//           ]),
//         ),
//       ],
//     );
//   }
// }
