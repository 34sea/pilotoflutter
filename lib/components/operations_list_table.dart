// import 'package:flutter/material.dart';
// import 'package:yard_flow/model/operation_list_model.dart';
// import 'package:yard_flow/viewmodel/operations_list_viewmodel.dart';

// class OperationsListTable extends StatefulWidget {
//   @override
//   _OperationsListTableState createState() => _OperationsListTableState();
// }

// class _OperationsListTableState extends State<OperationsListTable> {
//   final operationsListViewmodel = OperationsListViewmodel();
//   late Future<List<OperationListModel>> futureOperation;
//   @override
//   void initState() {
//     super.initState();
//     futureOperation = operationsListViewmodel.fetchMoves(
//         "2025-04-16T00:00:00Z",
//         "2025-04-21T14:00:00Z",
//         "4545",
//         "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkBjb3JuZWxkZXIuY28ubXoiLCJpYXQiOjE3NDUzODgzOTYsImV4cCI6MTc0NTQ3NDc5Nn0.UzJf2_aEnnxcWEyqXGZdjjKAFSQWn9NXuTgEhqlZ_bg");
//   }

//   @override
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<List<OperationListModel>>(
//       future: futureOperation,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasError) {
//           print("Erro dados: ${snapshot.error}");
//           return Center(child: Text("Erro: ${snapshot.error}"));
//         } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//           return Center(child: Text("Sem dados"));
//         } else {
//           final operations = snapshot.data!.take(5).toList();

//           return SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: SizedBox(
//               width: (MediaQuery.of(context).size.width * (0.76)),
//               child: ListView(
//                 padding: EdgeInsets.all(8),
//                 children: [
//                   buildHeader(),
//                   Container(
//                     alignment: Alignment.centerLeft,
//                     padding:
//                         EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
//                     child: SizedBox(
//                       width: double.infinity,
//                       child: Container(
//                         height: 2,
//                         color: Color(0xFF2E2E76),
//                       ),
//                     ),
//                   ),
//                   spacingRow(),
//                   for (var op in operations) ...[
//                     buildOperationRow(op),
//                     spacingRow(),
//                   ],
//                 ],
//               ),
//             ),
//           );
//         }
//       },
//     );
//   }
// }

// Widget buildHeader() {
//   return Container(
//     color: Color(0xFFF2F2F2),
//     padding: EdgeInsets.symmetric(vertical: 0),
//     child: Row(
//       children: [
//         headerCell('Type'),
//         headerCell('Container'),
//         headerCell('From'),
//         headerCell('To'),
//         headerCell('Time'),
//         headerCell('Distance'),
//         headerCell('Action'),
//       ],
//     ),
//   );
// }

// Widget headerCell(String text) {
//   return Expanded(
//     child: Container(
//       height: 50,
//       decoration: BoxDecoration(
//         border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//         borderRadius: BorderRadius.circular(4),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             text,
//             textAlign: TextAlign.center,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: 16,
//               color: Colors.black,
//               decoration: TextDecoration.none,
//             ),
//           )
//         ],
//       ),
//     ),
//   );
// }

// Widget buildOperationRow(OperationListModel op) {
//   return Container(
//     padding: EdgeInsets.symmetric(vertical: 0),
//     child: Row(
//       children: [
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             height: 55,
//             decoration: BoxDecoration(
//               border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//               borderRadius: BorderRadius.circular(0),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   op.type.toString(),
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 16,
//                     color: Colors.black,
//                     decoration: TextDecoration.none,
//                   ),
//                   softWrap: true,
//                   overflow: TextOverflow.ellipsis,
//                 )
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             height: 55,
//             decoration: BoxDecoration(
//               border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//               borderRadius: BorderRadius.circular(0),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   op.unit.toString(),
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 16,
//                     color: Colors.black,
//                     decoration: TextDecoration.none,
//                   ),
//                   softWrap: true,
//                   overflow: TextOverflow.ellipsis,
//                 )
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             height: 55,
//             decoration: BoxDecoration(
//               border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//               borderRadius: BorderRadius.circular(0),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   op.from.toString(),
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 16,
//                     color: Colors.black,
//                     decoration: TextDecoration.none,
//                   ),
//                   softWrap: true,
//                   overflow: TextOverflow.ellipsis,
//                 )
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             height: 55,
//             decoration: BoxDecoration(
//               border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//               borderRadius: BorderRadius.circular(0),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   op.to.toString(),
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 16,
//                     color: Colors.black,
//                     decoration: TextDecoration.none,
//                   ),
//                   softWrap: true,
//                   overflow: TextOverflow.ellipsis,
//                 )
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             height: 55,
//             decoration: BoxDecoration(
//               border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//               borderRadius: BorderRadius.circular(0),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   '126min',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 16,
//                     color: Colors.black,
//                     decoration: TextDecoration.none,
//                   ),
//                   softWrap: true,
//                   overflow: TextOverflow.ellipsis,
//                 )
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 10),
//             height: 55,
//             decoration: BoxDecoration(
//               border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//               borderRadius: BorderRadius.circular(0),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   '250m',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontWeight: FontWeight.normal,
//                     fontSize: 16,
//                     color: Colors.black,
//                     decoration: TextDecoration.none,
//                   ),
//                   softWrap: true,
//                   overflow: TextOverflow.ellipsis,
//                 )
//               ],
//             ),
//           ),
//         ),
//         Expanded(
//           child: Container(

//             // padding: EdgeInsets.zero,
//             // margin: EdgeInsets.zero,
//             // width: double.infinity,
//             height: 55,
//             decoration: BoxDecoration(),
//             child: ElevatedButton(
//               onPressed: () {},
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color(0xFF03BA55),
//                 foregroundColor: Color(0xFFF5F9FC),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(0),
//                 ),
//                 elevation: 0,
//               ),
//               child: const Text('Accept', style: TextStyle(fontSize: 16)),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

// Widget spacingRow() {
//   return Container(
//     height: 16,
//     color: Colors.white,
//   );
// }
