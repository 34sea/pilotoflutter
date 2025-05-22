import 'package:pilotoflutter/model/user_transporte_model.dart';

class GlobalUser {
  static final GlobalUser instance = GlobalUser._internal();

factory GlobalUser() => instance;

GlobalUser._internal();


 UserTransporteModel? user;


}