// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:yard_flow/utils/colors_utils.dart';
// import 'package:yard_flow/view/components/job_table_component.dart';
// import 'package:yard_flow/view/components/menu_flow.dart';
// import 'package:yard_flow/view/components/terminal_flow_app_bar.dart';

// class OperationView extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final fullWidth = MediaQuery.of(context).size.width;
//     final fullHeigth = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: TerminalFlowAppBar(),
//       endDrawer: MenuFlow(),
//       body: Padding(
//         padding: EdgeInsets.all(8),
//         child: Row(
//           children: [
//             Expanded(
//               flex: 2,
//               child: Container(
//                 padding: EdgeInsets.symmetric(vertical: 20.0),
//                 height: fullHeigth,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         width: double.infinity,
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 20.0, vertical: 10.0),
//                         child: Text(
//                           "Assignment",
//                           style: TextStyle(
//                             color: Theme.of(context).colorScheme.primary,
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),

//                       //line
//                       Container(
//                         alignment: Alignment.centerLeft,
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 20.0, vertical: 10.0),
//                         child: SizedBox(
//                           width: double.infinity,
//                           child: Container(
//                             height: 1,
//                             color: Color(0xFFCCCCCC),
//                           ),
//                         ),
//                       ),
//                       //-------
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 20.0),
//                         child: Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "Work Group:",
//                                   style: TextStyle(
//                                       color:
//                                           Theme.of(context).colorScheme.primary,
//                                       fontSize: 11,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 SizedBox(width: 5),
//                                 Text("xxxxxx", style: TextStyle(fontSize: 11)),
//                               ],
//                             ),
//                             Container(
//                               alignment: Alignment.centerLeft,
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: 0.0, vertical: 10.0),
//                               child: SizedBox(
//                                 width: double.infinity,
//                                 child: Container(
//                                   height: 1,
//                                   color: Color(0xFFCCCCCC),
//                                 ),
//                               ),
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "Work Que:",
//                                   style: TextStyle(
//                                       color:
//                                           Theme.of(context).colorScheme.primary,
//                                       fontSize: 11,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 SizedBox(width: 5),
//                                 Text("xxxxxx", style: TextStyle(fontSize: 11)),
//                               ],
//                             ),
//                             Container(
//                               alignment: Alignment.centerLeft,
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: 0.0, vertical: 10.0),
//                               child: SizedBox(
//                                 width: double.infinity,
//                                 child: Container(
//                                   height: 1,
//                                   color: Color(0xFFCCCCCC),
//                                 ),
//                               ),
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Text(
//                                   "Area:",
//                                   style: TextStyle(
//                                       color:
//                                           Theme.of(context).colorScheme.primary,
//                                       fontSize: 11,
//                                       fontWeight: FontWeight.bold),
//                                 ),
//                                 SizedBox(width: 5),
//                                 Text("xxxxxx", style: TextStyle(fontSize: 11)),
//                               ],
//                             ),
//                             Container(
//                               alignment: Alignment.centerLeft,
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: 0.0, vertical: 10.0),
//                               child: SizedBox(
//                                 width: double.infinity,
//                                 child: Container(
//                                   height: 1,
//                                   color: Color(0xFFCCCCCC),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 0),
//                             Container(
//                               width: double.infinity,
//                               height: 160,
//                               decoration: BoxDecoration(
//                                   border: Border.all(
//                                       width: 1, color: Color(0xFFDDDDDD))),
//                               child: Center(
//                                   child: Text("Dispatcher Instructions")),
//                             )
//                           ],
//                         ),
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 20),
//                         child: Column(
//                           children: [
//                             Container(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: 0.0, vertical: 20.0),
//                               child: Text(
//                                 "Shift Summary",
//                                 style: TextStyle(
//                                     color:
//                                         Theme.of(context).colorScheme.primary,
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                             ),
//                             Container(
//                               width: double.infinity,
//                               height: 160,
//                               decoration: BoxDecoration(
//                                   border: Border.all(
//                                       width: 1, color: Color(0xFFDDDDDD))),
//                               child:
//                                   Center(child: Text("Moves done Other KPI’s")),
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
//                       Container(
//                         width: double.infinity,
//                         padding: EdgeInsets.symmetric(
//                             horizontal: 20.0, vertical: 10.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Scheduled Jobs",
//                               style: TextStyle(
//                                 color: Theme.of(context).colorScheme.primary,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               textAlign: TextAlign.start,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {
//                                 print("Manual");
//                               },
//                               style: ElevatedButton.styleFrom(
//                                   backgroundColor: Theme.of(context).primaryColor,
//                                   foregroundColor: Colors.white,
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(32),
//                                   ),
//                                   elevation: 1),
//                               child: Row(
//                                 // mainAxisSize: MainAxisSize.min,
//                                 children: const [
//                                   Text('Manual'),
//                                   // SizedBox(width: 5),
//                                   // Icon(Icons.arrow_forward),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Expanded(
//                         child: JobTableComponent(),
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
// Prio;
// Job;
// Type;
// Truck;
// Location;
// Area;
// Age;
// Distance;
// action
// */
