class CommentsTableModel {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  CommentsTableModel({required this.postId, required this.id, required this.name, required this.email, required this.body});

  factory CommentsTableModel.fromJson(Map<String, dynamic> json){
    return CommentsTableModel(postId:json['postId'], id: json['id'], name: json['name'], email: json['email'], body: json['body']);
  }
}