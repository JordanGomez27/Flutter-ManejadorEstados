import 'package:estados/models/usuario.dart';
import 'package:estados/services/service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        title: usuarioService.existeUsuario
            ? Text('Nombre: ${usuarioService.usuario.nombre}')
            : Text('Pagina 2'),
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
                Usuario user = new Usuario(
                    nombre: 'Jordan',
                    edad: 30,
                    profesiones: [
                      'Developer Flutter',
                      'Comentarista de batallas'
                    ]);
                usuarioService.usuario = user;
              }),
          MaterialButton(
              color: Colors.blue,
              child:
                  Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
              onPressed: () {
                usuarioService.cambiarEdad(40);
              }),
          MaterialButton(
              color: Colors.blue,
              child: Text('Añadir Profesión',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {

                usuarioService.agregarProfesion();
                
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
