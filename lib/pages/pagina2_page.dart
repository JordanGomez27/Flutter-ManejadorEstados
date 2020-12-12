import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/models/usuario.dart';
import 'package:estados/bloc/usuario/usuario_bloc.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioBloc = BlocProvider.of<UsuarioBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
              color: Colors.blue,
              child: Text('Establecer Usuario',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                final newUser = new Usuario(
                    nombre: 'Jordan Gomez',
                    edad: 30,
                    profesiones: [
                      'Developer',
                      'Comentarista de batalla de gallos'
                    ]);

                usuarioBloc.add(ActivarUsuario(usuario: newUser));
              }),
          MaterialButton(
              color: Colors.blue,
              child:
                  Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
              onPressed: () {
                usuarioBloc.add(CambiarEdad(edad: 45));
              }),
          MaterialButton(
              color: Colors.blue,
              child: Text('Añadir Profesión',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {

                usuarioBloc.add(AgregarProfesion(profesion: 'Nueva profesion'));

              })
        ],
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: () {
            Navigator.pushNamed(context, 'pagina1');
          }),
    );
  }
}
