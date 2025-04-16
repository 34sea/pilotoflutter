import 'package:flutter/material.dart';


import '../components/custom_textfield.dart';
import '../viewmodel/login_viewmodel.dart';

class LoginView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Text("Login"),
      ),
    );
  }
}
// class LoginView extends StatelessWidget {
//   const LoginView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (_) => LoginViewModel(),
//       child: Scaffold(
//         backgroundColor: Colors.grey[100],
//         body: Padding(
//           padding: const EdgeInsets.all(24),
//           child: Center(
//             child: Consumer<LoginViewModel>(
//               builder: (context, viewModel, child) {
//                 return Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     const Text(
//                       'Login',
//                       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 24),
//                     CustomTextField(
//                       label: 'Usuário',
//                       controller: viewModel.usernameController,
//                     ),
//                     const SizedBox(height: 16),
//                     CustomTextField(
//                       label: 'Senha',
//                       controller: viewModel.passwordController,
//                       isPassword: true,
//                     ),
//                     const SizedBox(height: 24),
//                     ElevatedButton(
//                       onPressed: () {
//                         final result = viewModel.login();
//                         if (result == null) {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             const SnackBar(content: Text('Login bem-sucedido!')),
//                           );
//                         } else {
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(content: Text(result)),
//                           );
//                         }
//                       },
//                       child: const Text('Entrar'),
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
