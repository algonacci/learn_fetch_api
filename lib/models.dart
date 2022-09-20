class ToDoListModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  ToDoListModel({this.userId, this.id, this.title, this.completed});

  ToDoListModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    return {'userId': userId, 'id': id, 'title': title, 'completed': completed};
  }
}
