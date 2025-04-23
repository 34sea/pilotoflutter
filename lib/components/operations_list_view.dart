// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:yard_flow/utils/colors_utils.dart';
// import 'package:yard_flow/view/components/bottom_menu_component.dart';
// import 'package:yard_flow/view/components/job_table_component.dart';
// import 'package:yard_flow/view/components/menu_flow.dart';
// import 'package:yard_flow/view/components/operations_list_table.dart';
// import 'package:yard_flow/view/components/terminal_flow_app_bar.dart';

// class OperationsListView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final fullWidth = MediaQuery.of(context).size.width;
//     final fullHeigth = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: TerminalFlowAppBar(),
//        bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),  
//         color: Color(0xFFF4F8FC),  
//         child: BottomMenuComponent()
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(0),
//         child: Row(
//           children: [
//             Expanded(
//               flex: 2,
//               child: Container(
//                 decoration: BoxDecoration(color: Color(0xFFF4F8FC)),
//                 padding: EdgeInsets.symmetric(vertical: 20.0),
//                 height: fullHeigth,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Container(
//                       //   width: double.infinity,
//                       //   padding: EdgeInsets.symmetric(
//                       //       horizontal: 20.0, vertical: 10.0),
//                       //   child: Text(
//                       //     "Assignment",
//                       //     style: TextStyle(
//                       //       color: Theme.of(context).colorScheme.primary,
//                       //       fontSize: 16,
//                       //       fontWeight: FontWeight.bold,
//                       //     ),
//                       //     textAlign: TextAlign.center,
//                       //   ),
//                       // ),

//                       //line
//                       // Container(
//                       //   alignment: Alignment.centerLeft,
//                       //   padding: EdgeInsets.symmetric(
//                       //       horizontal: 20.0, vertical: 10.0),
//                       //   child: SizedBox(
//                       //     width: double.infinity,
//                       //     child: Container(
//                       //       height: 1,
//                       //       color: Color(0xFFCCCCCC),
//                       //     ),
//                       //   ),
//                       // ),
//                       //-------
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 20.0),
//                         height: (MediaQuery.of(context).size.height*0.61),
//                         child: SingleChildScrollView(
//                           child: Column(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
                            
//                             Container(
//                               padding: EdgeInsets.all(25),
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   width: 2,
//                                   color: Color(0xFF2E2E76),
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                                 color: Colors.white,
//                               ),
//                               child: Column(children: [
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       "Work Group:",
//                                       style: TextStyle(
//                                           color: Color(0xFF232323),
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     SizedBox(width: 5),
//                                     Expanded(
//                                       child: Text(
//                                         "xxxxxx",
//                                         style: TextStyle(fontSize: 16),
//                                         softWrap: true,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.end,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                                 // Container(
//                                 //   alignment: Alignment.centerLeft,
//                                 //   padding: EdgeInsets.symmetric(
//                                 //       horizontal: 0.0, vertical: 10.0),
//                                 //   child: SizedBox(
//                                 //     width: double.infinity,
//                                 //     child: Container(
//                                 //       height: 1,
//                                 //       color: Color(0xFFCCCCCC),
//                                 //     ),
//                                 //   ),
//                                 // ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       "Work Queu:",
//                                       style: TextStyle(
//                                           color: Color(0xFF232323),
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.bold),
//                                     ),
//                                     SizedBox(width: 5),
//                                     Expanded(
//                                       child: Text(
//                                         "xxxxxx",
//                                         style: TextStyle(fontSize: 16),
//                                         softWrap: true,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.end,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 15,
//                                 ),
//                                 // Container(
//                                 //   alignment: Alignment.centerLeft,
//                                 //   padding: EdgeInsets.symmetric(
//                                 //       horizontal: 0.0, vertical: 10.0),
//                                 //   child: SizedBox(
//                                 //     width: double.infinity,
//                                 //     child: Container(
//                                 //       height: 1,
//                                 //       color: Color(0xFFCCCCCC),
//                                 //     ),
//                                 //   ),
//                                 // ),
//                                 Row(
//                                   mainAxisAlignment:
//                                       MainAxisAlignment.spaceBetween,
//                                   children: [
//                                     Text(
//                                       "Area:",
//                                       style: TextStyle(
//                                         color: Color(0xFF232323),
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     SizedBox(width: 5),
//                                     Expanded(
//                                       child: Text(
//                                         "A1, A2, F4, F2, B1, F5, B4, C1, D1",
//                                         style: TextStyle(fontSize: 16),
//                                         softWrap: true,
//                                         overflow: TextOverflow.ellipsis,
//                                         textAlign: TextAlign.end,
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                               ]),
//                             ),
//                             // Container(
//                             //   alignment: Alignment.centerLeft,
//                             //   padding: EdgeInsets.symmetric(
//                             //       horizontal: 0.0, vertical: 10.0),
//                             //   child: SizedBox(
//                             //     width: double.infinity,
//                             //     child: Container(
//                             //       height: 1,
//                             //       color: Color(0xFFCCCCCC),
//                             //     ),
//                             //   ),
//                             // ),
//                             SizedBox(height: 15),
//                             Container(
//                               padding: EdgeInsets.all(25),
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   width: 2,
//                                   color: Color(0xFF2E2E76),
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                                 color: Colors.white,
//                               ),
//                               child: Center(
//                                   child: Text(
//                                       "Move Container MSCU 4561237 (40’ HC) from Yard Block 45, Slot 08B to Vessel ", style: TextStyle(
//                                         fontSize: 16
//                                       ),)),
//                             ),
//                             SizedBox(height: 15),
//                              Container(
//                               padding: EdgeInsets.all(25),
//                               width: double.infinity,

//                               decoration: BoxDecoration(
//                                 border: Border.all(
//                                   width: 2,
//                                   color: Color(0xFF2E2E76),
//                                 ),
//                                 borderRadius: BorderRadius.circular(8),
//                                 color: Colors.white,
//                               ),
//                               child:Text(
//                                       "Shift Summary", textAlign: TextAlign.center, style: TextStyle(
//                                         color: Color(0xFF2E2E76), fontWeight: FontWeight.bold, fontSize: 16
//                                       ), ),
//                             )
//                           ],
//                         ),
//                         )
//                       ),
//                       SizedBox(height: 15,),
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 20),
//                         // height: (MediaQuery.of(context).size.height*0.1),
//                         decoration: BoxDecoration(
                          
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Container(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: 0.0, vertical: 10.0),
//                                   width: fullWidth,
//                                   height: 65,
//                               child: ElevatedButton(
//                                 onPressed: () {},
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: Color(0xFF2E2E76),
//                                   foregroundColor: Color(0xFFF5F9FC),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   elevation: 0,
//                                 ),
//                                 child: const Text('Manual',
//                                     style: TextStyle(fontSize: 16)),
//                               ),
//                             ),
                            
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(width: 16),
//             Expanded(
//                 flex: 7,
//                 child: Container(
//                   padding: EdgeInsets.symmetric(vertical: 20.0),
//                   height: fullHeigth,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Container(
//                       //   width: double.infinity,
//                       //   padding: EdgeInsets.symmetric(
//                       //       horizontal: 20.0, vertical: 10.0),
//                       //   child: Row(
//                       //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       //     children: [
//                       //       Text(
//                       //         "Scheduled Jobs",
//                       //         style: TextStyle(
//                       //           color: Theme.of(context).colorScheme.primary,
//                       //           fontSize: 16,
//                       //           fontWeight: FontWeight.bold,
//                       //         ),
//                       //         textAlign: TextAlign.start,
//                       //       ),
//                       //       ElevatedButton(
//                       //         onPressed: () {
//                       //           print("Manual");
//                       //         },
//                       //         style: ElevatedButton.styleFrom(
//                       //             backgroundColor: Theme.of(context).primaryColor,
//                       //             foregroundColor: Colors.white,
//                       //             shape: RoundedRectangleBorder(
//                       //               borderRadius: BorderRadius.circular(32),
//                       //             ),
//                       //             elevation: 2),
//                       //         child: Row(
//                       //           // mainAxisSize: MainAxisSize.min,
//                       //           children: const [
//                       //             Text('Manual', style: TextStyle(
//                       //               fontSize: 16
//                       //             ),),
//                       //             // SizedBox(width: 5),
//                       //             // Icon(Icons.arrow_forward),
//                       //           ],
//                       //         ),
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//                       Expanded(
//                         child: OperationsListTable(),
//                       ),
//                       // Container(
//                       //   width: double.infinity,
//                       //   child: Column(
//                       //     crossAxisAlignment: CrossAxisAlignment.start,
//                       //     children: [
//                       //       TextButton(
//                       //         onPressed: () => {},
//                       //         style: TextButton.styleFrom(
//                       //           backgroundColor: Theme.of(context).colorScheme.primary,
//                       //           foregroundColor: Colors.white,
//                       //           side: BorderSide(
//                       //               color: Theme.of(context).colorScheme.primary, width: 1),
//                       //           shape: RoundedRectangleBorder(
//                       //             borderRadius: BorderRadius.circular(3),
//                       //           ),
//                       //           padding: EdgeInsets.symmetric(
//                       //               horizontal: 20, vertical: 18),
//                       //         ),
//                       //         child: Text('Unscheduled jobs'),
//                       //       )
//                       //     ],
//                       //   ),
//                       // )
//                     ],
//                   ),
//                 )),
                
//           ],
//         ),
//       ),
//     );
//   }
// }

// /*
// table
// type;
// container;
// from;
// to;
// time;
// distance;
// action
// */
