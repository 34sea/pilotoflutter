// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:yard_flow/model/job_model.dart';
// import 'package:yard_flow/model/operation_list_model.dart';
// import 'package:yard_flow/utils/colors_utils.dart';
// import 'package:yard_flow/view/move_view.dart';

// import 'package:flutter/material.dart';
// import 'package:yard_flow/viewmodel/operations_list_viewmodel.dart';

// class JobTableComponent extends StatefulWidget {
//   const JobTableComponent({super.key});

//   @override
//   State<JobTableComponent> createState() => _JobTableComponentState();
// }

// class _JobTableComponentState extends State<JobTableComponent> {
//   final operationsListViewmodel = OperationsListViewmodel();
//   late Future<List<OperationListModel>> futureOperation;
//   bool espaco = true;

//   void changeEspaco(){
//     setState(() {
//       espaco=!espaco;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     futureOperation = operationsListViewmodel.fetchMoves(
//         "2025-04-16T00:00:00Z",
//         "2025-04-21T14:00:00Z",
//         "4545",
//         "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbkBjb3JuZWxkZXIuY28ubXoiLCJpYXQiOjE3NDUzMTI4NTksImV4cCI6MTc0NTM5OTI1OX0.aa-rDkf3jcJ3lik_pLSjXO2BgfZ9_YOb5VAnlm-WX9Q");
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: futureOperation,
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (snapshot.hasError) {
//             print("Erro dados: ${snapshot.error}");
//             return Center(
//               child: Text("Erro: ${snapshot.error}"),
//             );
//           } else if (snapshot.data!.isEmpty || !snapshot.hasData) {
//             return Center(
//               child: Text("Sem dados"),
//             );
//           } else {
//             final operationPosts = snapshot.data!.take(5);
//             return Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Expanded(
//                   child: SingleChildScrollView(
//                     scrollDirection: Axis.vertical,
//                     child: SingleChildScrollView(
//                       // scrollDirection: Axis.horizontal,
//                       child: Container(
//                           width: (MediaQuery.of(context).size.width),
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 0, vertical: 0),
//                           child: Expanded(
//                             child: DataTable(
//                               dataRowMinHeight: 60,
//                               dataRowMaxHeight: 60,
//                               columnSpacing: 0,
//                               headingRowColor: MaterialStateColor.resolveWith(
//                                 (states) => Color(0xFFF9F9F9),
//                               ),
//                               border: TableBorder.all(color: Color(0xFFEEEEEE)),
//                               columns: const [
//                                 DataColumn(
//                                     label: Center(
//                                   child: Text(
//                                     'Type',
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                     textAlign: TextAlign.center,
//                                   ),
//                                 )),
//                                 DataColumn(
//                                     label: Center(
//                                   child: Text(
//                                     "Container",
//                                     style:
//                                         TextStyle(fontWeight: FontWeight.bold),
//                                     textAlign: TextAlign.center,
//                                   ),
//                                 )),
//                                 DataColumn(
//                                     label: Center(
//                                   child: Text('From',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold)),
//                                 )),
//                                 DataColumn(
//                                     label: Center(
//                                   child: Text('To',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold)),
//                                 )),
//                                 DataColumn(
//                                     label: Center(
//                                   child: Text('Time',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold)),
//                                 )),
//                                 DataColumn(
//                                     label: Center(
//                                   child: Text('Distance',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold)),
//                                 )),
//                                 DataColumn(
//                                     label: Center(
//                                   child: Text('Action',
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold)),
//                                 )),
//                               ],
//                               rows: operationPosts
//                                   .toList()
//                                   .asMap()
//                                   .entries
//                                   .map((entry) {
//                                 final index = entry.key;
//                                 final e = entry.value;
//                                 final isEven = index % 2 == 0;
                                
//                                 return DataRow(
//                                   color: MaterialStateColor.resolveWith(
//                                     (states) =>
//                                         isEven ? Colors.white : Colors.white,
//                                   ),
//                                   cells: [
//                                     DataCell(Center(
//                                       child: Text("${e.type}"),
//                                     )),
//                                     DataCell(Center(
//                                       child: Text("${e.unit}"),
//                                     )),
//                                     DataCell(Center(
//                                       child: Text("${e.from}"),
//                                     )),
//                                     DataCell(Center(
//                                       child: Text("${e.from}"),
//                                     )),
//                                     DataCell(Center(
//                                       child: Text("126min"),
//                                     )),
//                                     DataCell(Center(
//                                       child: Text("150m"),
//                                     )),
//                                     DataCell(Center(
//                                       child: Container(
//                                         padding: EdgeInsets.zero,
//                                         margin: EdgeInsets.zero,
//                                         width: double.infinity,
//                                         height: double.infinity,
//                                         decoration: BoxDecoration(
//                                           border: Border.all(width: 1),
//                                         ),
//                                         child: ElevatedButton(
//                                           onPressed: () {},
//                                           style: ElevatedButton.styleFrom(
//                                             backgroundColor: Color(0xFF03BA55),
//                                             foregroundColor: Color(0xFFF5F9FC),
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius:
//                                                   BorderRadius.circular(0),
//                                             ),
//                                             elevation: 0,
//                                           ),
//                                           child: const Text('Accept',
//                                               style: TextStyle(fontSize: 16)),
//                                         ),
//                                       ),
//                                     )),
//                                   ],
//                                 );
//                               }).toList(),
//                             ),
//                           )),
//                     ),
//                   ),
//                 ),
//               ],
//             );
            
//           }
//         });
//   }
// }

// class _AligmentText extends StatelessWidget {
//   final title;
//   _AligmentText({super.key, required this.title});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(
//         title,
//         textAlign: TextAlign.center,
//       ),
//     );
//   }
// }
