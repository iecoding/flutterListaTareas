class Task {
  Task(this.title, {this.done = false});

  Task.fromJson(Map<String, dynamic>) {
    title = json['title'];
    done = json[done];
  }

  late final String title;
  late bool done;


  Map<String, dynamic> toJson()
  {
    return {
      'title': title,
      'done': done,
    };
  }}