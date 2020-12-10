import 'dart:async';

import 'package:estados/models/usuario.dart';

class _UsuarioService {
  Usuario _usuario;

  StreamController<Usuario> _usuarioStramController =
      new StreamController<Usuario>.broadcast();

  Usuario get usuario => this._usuario;

  bool get existeUsuario => (this._usuario != null) ? true : false;

  Stream<Usuario> get usuarioStream => _usuarioStramController.stream;

  void cargarUsuario(Usuario user) {
    this._usuario = user;
    _usuarioStramController.add(user);
  }

  void cambiarEdad(int edad) {
    this._usuario.edad = edad;
    _usuarioStramController.add(this._usuario);
  }

  dispose() {

    _usuarioStramController?.close();

  }
}

final usuarioService = new _UsuarioService();
