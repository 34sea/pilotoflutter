class UserTransporteModel {
  final int userId;
  final int id;
  final String title;
  final String body;



  UserTransporteModel({required this.body, required this.id, required this.title, required this.userId});

  factory UserTransporteModel.fromJson(Map<String, dynamic> json){
    return UserTransporteModel(body: json['body'], id: json['id'], title: json['title'], userId: json['userId']);
  }
}