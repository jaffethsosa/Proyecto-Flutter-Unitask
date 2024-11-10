import 'package:app_fluter_unitask/domian/model/task.dart';
import 'package:flutter/services.dart';

class TaskRepository {
  static const String _pathAsset = 'assets/documents/task.json';
  //CRUD

  //CREATE

  //READ 
  Future<List<Task>> getAllTask() async {
  try {
    final taskJson = await rootBundle.loadString(_pathAsset);
    if (taskJson.isEmpty) {
      throw Exception("El archivo JSON está vacío");
    }
    final List<Task> tasks = taskFromJson(taskJson);
    return tasks;
  } catch (e) {
    return [];
  }
}


  //UPDATE


  //DELETE
}