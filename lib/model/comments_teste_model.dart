class CommentsTesteModel {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  CommentsTesteModel({required this.body, required this.email, required this.id, required this.name, required this.postId});

  factory CommentsTesteModel.fromJson(Map<String, dynamic> json){
    return CommentsTesteModel(body: json["body"], email: json["email"], id: json["id"], name: json["name"], postId: json["postId"]);
  }
}