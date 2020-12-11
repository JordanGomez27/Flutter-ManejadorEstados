import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:estados/models/usuario.dart';

part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState> {
  UsuarioCubit() : super(UsuarioInitial());

  void seleccionarUsuario(Usuario user) {
    emit(new UsuarioActivo(usuario: user));
  }

  void cambiarEdad(int edad) {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      final newUser = currentState.usuario.copyWith(edad: 90);

      emit(UsuarioActivo(usuario: newUser));
    }
  }
// this._usuario.profesiones.add('Profesion ${this._usuario.profesiones.length + 1}');
//     notifyListeners();

  void agregarProfesion() {
    final currentState = state;

    if (currentState is UsuarioActivo) {
      // List<String> profesiones = currentState.usuario.profesiones;

      // profesiones.add('Profesion ${profesiones.length + 1}');

      final newProfesiones = [
        ...currentState.usuario.profesiones,
        'Profesión ${currentState.usuario.profesiones.length + 1}'
      ];

      final newUser =
          currentState.usuario.copyWith(profesiones: newProfesiones);

      emit(UsuarioActivo(usuario: newUser));
    }
  }

  void borrarUsuario() {

    emit(UsuarioInitial());
    
  }
}
