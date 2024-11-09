import 'dart:convert';

List<Perfil> perfilFromJson(String str) =>
    List<Perfil>.from(json.decode(str).map((x) => Perfil.fromJson(x)));

String perfilToJson(List<Perfil> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Perfil {
  late int id;
  late String name;
  late int age;
  late String direction;
  late String registred;
  late String phone;
  late String about;


  Perfil(
      {required this.id,
      required this.name,
      required this.age,
      required this.direction,
      required this.registred,
      required this.phone,
      required this.about});

  factory Perfil.fromJson(Map<String, dynamic> json) => Perfil(
          id: json["id"] ?? 0,  
          name: json["name"] ?? "", 
          direction: json["direction"] ?? "",
          age: json["age"] ?? 0,
          registred: json["registred"] ?? "",
          phone: json["phone"] ?? "",
          about: json["about"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "direction": direction,
        "age": age,
        "phone": phone,
        "about": about,
        "registred": registred
      };
}
