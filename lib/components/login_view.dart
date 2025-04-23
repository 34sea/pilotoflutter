// import 'package:flutter/material.dart';
// import 'package:yard_flow/view/checklist_view.dart';
// import 'package:yard_flow/view/components/terminal_flow_app_bar.dart';
// import 'package:yard_flow/viewmodel/login_viewmodel.dart';

// class LoginView extends StatefulWidget {
//   late final LoginViewModel viewModel;
//   LoginView({super.key}) {
//     viewModel = LoginViewModel();
//   }
//   @override
//   State<LoginView> createState() => _LoginViewState();
// }

// class _LoginViewState extends State<LoginView> {
//   Future<bool> loginStatus = Future.value(false);

//   login() {
//     setState(() {
//       // loginStatus = widget.viewModel.login();
//       Navigator.push(context, MaterialPageRoute(builder: (context)=>ChecklistView()));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: TerminalFlowAppBar(),
//         body: Center(
//           child: SizedBox(
//             width: 400,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               spacing: 10,
//               children: [
//                 TextField(
//                   decoration: InputDecoration(labelText: "Email"),
//                   onChanged: (val) => widget.viewModel.model.email = val,
//                 ),
//                 TextField(
//                   decoration: InputDecoration(labelText: "Password"),
//                   onChanged: (val) => widget.viewModel.model.password = val,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     FilledButton(
//                       onPressed: login,
//                       child: FutureBuilder(
//                           future: loginStatus,
//                           builder: (context, snap) {
//                             if (snap.connectionState != ConnectionState.done) {
//                               return CircularProgressIndicator(color: Colors.white);
//                             } else {
//                               return Text("Login");
//                             }
//                           }),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }
