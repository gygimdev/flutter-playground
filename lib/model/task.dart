class Task {
  int? id;
  int? userId;
  String? title;

  Task({this.id, this.userId, this.title});

  factory Task.fromJson(Map<String, dynamic> json) {
    return Task(userId: json['userId'], id: json['id'], title: json['title']);
  }
}