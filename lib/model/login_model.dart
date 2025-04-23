class LoginModel {
  num id;
  String email;
  String password;

  LoginModel({required this.id,required this.email,required this.password});

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {'id': int id, 'email': String email, 'password': String password} => LoginModel(
        id: id,
        email: email,
        password: password
      ),
      _ => throw const FormatException('Invalid json'),
    };
  }
  factory LoginModel.fromDefault() => LoginModel(id: 0, email: "", password: "");
}