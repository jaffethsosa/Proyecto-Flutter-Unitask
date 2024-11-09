
import 'package:app_fluter_unitask/domian/model/perfil.dart';
import 'package:app_fluter_unitask/domian/repository/perfil_repository.dart';

class PerfilService {
  final PerfilRepository _perfilRepository = PerfilRepository();

  Future<List<Perfil>> getAllPerfil() async {
    return await _perfilRepository.getAllPerfil();
  }
}