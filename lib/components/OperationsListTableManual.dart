// import 'package:flutter/material.dart';
// import 'package:yard_flow/model/login_model.dart';
// import 'package:yard_flow/model/operation_list_model.dart';
// import 'package:yard_flow/utils/get_Iso_dates.dart';
// import 'package:yard_flow/viewmodel/operations_list_viewmodel.dart';

// class OperationsListTableManual extends StatefulWidget {
//   final LoginModel? user;
//   OperationsListTableManual({required this.user});
//   @override
//   _OperationsListTableManualState createState() =>
//       _OperationsListTableManualState(userLog: user);
// }

// class _OperationsListTableManualState extends State<OperationsListTableManual> {
//   final ScrollController _scrollController = ScrollController();
//   final LoginModel? userLog;
//   final TextEditingController _searchController = TextEditingController();
//   _OperationsListTableManualState({required this.userLog});
//   final operationsListViewmodel = OperationsListViewmodel();
//   late Future<List<OperationListModel>> futureOperation;
//   var dateCurrent = GetIsoDates().getIsoDates();
//     final double scrollAmount = 100.0; 

//   void scrollUp() {
//     _scrollController.animateTo(
//       _scrollController.offset - scrollAmount,
//       duration: Duration(milliseconds: 300),
//       curve: Curves.easeOut,
//     );
//   }

//   void scrollDown() {
//     _scrollController.animateTo(
//       _scrollController.offset + scrollAmount,
//       duration: Duration(milliseconds: 300),
//       curve: Curves.easeOut,
//     );
//   }
//   @override
//   void initState() {
//     super.initState();
//     futureOperation = operationsListViewmodel.fetchMoves(
//         "2025-04-16T00:00:00Z",
//         // dateCurrent[0],
//         dateCurrent[1],
//         "4545",
//         "${userLog!.token}");

//     print("${userLog!.token}");
//   }

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

//           return Expanded(
//             child: Container(
//               padding: EdgeInsets.symmetric(vertical: 20),
//               decoration: BoxDecoration(color: Colors.white),
//               width: (MediaQuery.of(context).size.width * (0.76)),
//               child: Theme(
//                 data: Theme.of(context).copyWith(
//                   scrollbarTheme: ScrollbarThemeData(
//                     thumbColor: MaterialStateProperty.all(Color(0xFF2E2E76)),
//                     trackColor: MaterialStateProperty.all(Colors.grey[300]),
//                     trackBorderColor: MaterialStateProperty.all(Colors.grey),
//                     thickness: MaterialStateProperty.all(6),
//                     radius: Radius.circular(12),
//                   ),
//                 ),
//                 child: Scrollbar(
//                   controller: _scrollController,
//                   thumbVisibility: true,
//                   thickness: 8,
//                   radius: Radius.circular(10),
//                   scrollbarOrientation: ScrollbarOrientation.right,
//                   interactive: true,
                  
//                   trackVisibility: true,
//                   child: ListView(
//                     padding: EdgeInsets.all(8),
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 4.0, vertical: 12.0),
//                         child: TextField(
//                           controller: _searchController,
//                           decoration: InputDecoration(
//                             labelText: 'Search...',
//                             labelStyle: TextStyle(
//                               color: Color(0xFF999999),
//                             ),
//                             prefixIcon: Icon(
//                               Icons.search,
//                               color: Color(0xFF999999),
//                             ),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Color(0xFFCCCCCC)),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(5)),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Color(0xFF999999), width: 2),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(5)),
//                             ),
//                           ),
//                         ),
//                       ),
//                       buildHeader(),
//                       Container(
//                         alignment: Alignment.centerLeft,
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 0.0, vertical: 0.0),
//                         child: SizedBox(
//                           width: double.infinity,
//                           child: Container(
//                             height: 2,
//                             color: Color(0xFF2E2E76),
//                           ),
//                         ),
//                       ),
//                       spacingRow(),
//                       for (var op in operations) ...[
//                         buildOperationRow(op),
//                         spacingRow(),
//                       ],
//                     ],
//                   ),
//                 ),
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
//                 border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//                 borderRadius: BorderRadius.circular(0),
//                 color: Colors.white),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   op.move_kind.toString(),
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
//                 border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//                 borderRadius: BorderRadius.circular(0),
//                 color: Colors.white),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   op.container_id.toString(),
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
//                 border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//                 borderRadius: BorderRadius.circular(0),
//                 color: Colors.white),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   op.fm_pos_name.toString(),
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
//                 border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//                 borderRadius: BorderRadius.circular(0),
//                 color: Colors.white),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   op.to_pos_name.toString(),
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
//                 border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//                 borderRadius: BorderRadius.circular(0),
//                 color: Colors.white),
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
//                 border: Border.all(width: 1, color: Color(0xFFDDDDDD)),
//                 borderRadius: BorderRadius.circular(0),
//                 color: Colors.white),
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