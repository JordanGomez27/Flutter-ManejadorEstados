import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:estados/models/usuario.dart';
import 'package:estados/bloc/usuario/usuario_cubit.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioCubit = BlocProvider.of<UsuarioCubit>(context);

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
                    nombre: 'Jordan',
                    edad: 30,
                    profesiones: [
                      'Developer',
                      'Narrador de batalla de gallos'
                    ]);

                usuarioCubit.seleccionarUsuario(newUser);
              }),
          MaterialButton(
              color: Colors.blue,
              child:
                  Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
              onPressed: () {
                usuarioCubit.cambiarEdad(40);
              }),
          MaterialButton(
              color: Colors.blue,
              child: Text('Añadir Profesión',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {
                usuarioCubit.agregarProfesion();
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
