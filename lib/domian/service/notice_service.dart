import 'package:app_fluter_unitask/domian/repository/notice_repository.dart';
import 'package:app_fluter_unitask/domian/model/notice.dart';

class NoticeService {
  final NoticeRepository _noticeRepository = NoticeRepository();

  Future<List<Notice>> getAllNotice() async {
    return await _noticeRepository.getAllNotice();
  }
}
