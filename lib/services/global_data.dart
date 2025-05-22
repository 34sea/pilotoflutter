import 'package:pilotoflutter/model/user_transporte_model.dart';

class GlobalData {
  static final GlobalData instance = GlobalData._internal();

  factory GlobalData() => instance;

  GlobalData._internal();

  int id = 0;
 
}
