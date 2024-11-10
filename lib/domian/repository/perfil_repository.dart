import 'package:app_fluter_unitask/domian/model/perfil.dart';
import 'package:flutter/services.dart';

class PerfilRepository {
  static const String _pathAsset = 'assets/documents/perfil.json';
  //CRUD

  //CREATE

  //READ 
  Future<List<Perfil>> getAllPerfil() async {
  try {
    final perfilJson = await rootBundle.loadString(_pathAsset);
    if (perfilJson.isEmpty) {
      throw Exception("El archivo JSON está vacío");
    }
    final List<Perfil> perfiles = perfilFromJson(perfilJson);
    return perfiles;
  } catch (e) {
    return [];
  }
}


  //UPDATE


  //DELETE
}