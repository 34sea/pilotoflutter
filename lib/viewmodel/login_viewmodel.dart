import 'package:flutter/material.dart';
import '../model/user_model.dart';

class LoginViewModel extends ChangeNotifier {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  UserModel? _user;

  String? login() {
    final username = usernameController.text.trim();
    final password = passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      return 'Preencha todos os campos.';
    }

    _user = UserModel(username: username, password: password);

    if (_user!.username == 'admin' && _user!.password == '1234') {
      return null; 
    } else {
      return 'Usuário ou senha inválidos.';
    }
  }

  void disposeControllers() {
    usernameController.dispose();
    passwordController.dispose();
  }
}
