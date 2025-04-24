class PostJsPostModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostJsPostModel({required this.userId, required this.id, required this.title, required this.body});
  
  factory PostJsPostModel.fromJson(Map<String, dynamic> json){
    return PostJsPostModel(userId: json['userId'], id: json['id'], title: json['title'], body: json['body']);
  }

}