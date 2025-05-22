import 'dart:convert';

import 'package:pilotoflutter/model/user_transporte_model.dart';
import 'package:http/http.dart' as http;

class UserTransporteViewmodel {
  Future<List<UserTransporteModel>> takeUsers() async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    if(response.statusCode == 200){
      List data = json.decode(response.body);
      return data.map((e) => UserTransporteModel.fromJson(e)).toList();
    }else{
      return throw("erro");
    }
  }
}
