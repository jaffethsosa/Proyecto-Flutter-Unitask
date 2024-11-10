import 'package:flutter/services.dart';
import 'package:app_fluter_unitask/domian/model/notice.dart';

class NoticeRepository {
  static const String _pathAsset = 'assets/documents/noticias.json';

  Future<List<Notice>> getAllNotice() async {
  try {
    final noticeJson = await rootBundle.loadString(_pathAsset);
    print('Contenido del archivo JSON: $noticeJson'); 
    if (noticeJson.isEmpty) {
      throw Exception("El archivo JSON está vacío");
    }
    final List<Notice> notices = noticeFromJson(noticeJson);
    return notices;
  } catch (e) {
    print("Error cargando el archivo JSON: $e");
    return []; 
  }
}

}
