import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pilotoflutter/model/usuario_model.dart';

class UsuarioViewmodel {
  Future<List<UsuarioModel>> fetchUsersl() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    if(response.statusCode == 200){
      List data = json.decode(response.body);
      return data.map((e) => UsuarioModel.fromJson(e)).toList();
    }else{
      return throw("erro");
    }
  }
}