class AlbumsTesteModel {
  final int userId;
  final int id;
  final String title;

  AlbumsTesteModel({required this.id, required this.title, required this.userId});

  factory AlbumsTesteModel.fromJson(Map<String, dynamic> json){
    return AlbumsTesteModel(id: json["id"], title: json["title"], userId: json["userId"]);
  }
}