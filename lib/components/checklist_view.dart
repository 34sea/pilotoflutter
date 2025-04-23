// import 'package:flutter/material.dart';
// import 'package:yard_flow/view/components/check_list_page.dart';
// import 'package:yard_flow/view/components/menu_flow.dart';
// import 'package:yard_flow/view/components/terminal_flow_app_bar.dart';

// class ChecklistView extends StatefulWidget {
//   const ChecklistView({super.key});

//   @override
//   State<ChecklistView> createState() => _ChecklistPageState();
// }

// class _ChecklistPageState extends State<ChecklistView> {
//   @override
//   Widget build(BuildContext context) {
//     final fullWidth = MediaQuery.of(context).size.width;
//     final fullHeigth = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: TerminalFlowAppBar(),
//       endDrawer: MenuFlow(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(32),
//           child: Row(
//             children: [
//               Expanded(
//                 child: Container(
//                   height: fullHeigth,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ChecklistPage(),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(width: 16),
//               Expanded(
//                 child: Container(
//                   height: fullHeigth,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         margin: EdgeInsets.all(8.0),
//                         child: Text(
//                           'Maintenance Comments',
//                           style: TextStyle(
//                               color: Theme.of(context).primaryColor,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16),
//                         ),
//                       ),
//                       Container(
//                           margin: EdgeInsets.all(16.0),
//                           child: Column(
//                             children: [
//                               Container(
//                                 width: double.infinity,
//                                 alignment: Alignment.centerLeft,
//                                 child: Text(
//                                   'Maintence can keep comments here about the state of the machine like:',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ),
//                               Container(
//                                 width: double.infinity,
//                                 margin: EdgeInsets.symmetric(
//                                     horizontal: 0.0, vertical: 16.0),
//                                 alignment: Alignment.centerLeft,
//                                 child: Text(
//                                   '"Motor is producing some smoke but not critical"',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ),
//                               Container(
//                                 width: double.infinity,
//                                 alignment: Alignment.centerLeft,
//                                 child: Text(
//                                   '"Engine door hinge will be fixed on next service"',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               )
//                             ],
//                           )),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
