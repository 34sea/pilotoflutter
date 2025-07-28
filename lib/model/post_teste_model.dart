class PostTesteModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostTesteModel({required this.body, required this.id, required this.title, required this.userId});

  factory PostTesteModel.fromJson(Map<String, dynamic> json){
    return PostTesteModel(body: json["body"], id: json["id"], title: json["title"], userId: json["userId"]);
  }
}