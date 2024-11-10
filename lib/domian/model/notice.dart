import 'dart:convert';

List<Notice> noticeFromJson(String str) =>
    List<Notice>.from(json.decode(str).map((x) => Notice.fromJson(x)));

String noticeToJson(List<Notice> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Notice {
  final int id;
  final String title;
  final String author;
  final String date;
  final String summary;

  Notice({
    required this.id,
    required this.title,
    required this.author,
    required this.date,
    required this.summary,
  });

  factory Notice.fromJson(Map<String, dynamic> json) {
    return Notice(
      id: json['id'],
      title: json['title'],
      author: json['author'],
      date: json['date'],
      summary: json['summary'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'date':date,
      'summary': summary,
    };
  }
}
