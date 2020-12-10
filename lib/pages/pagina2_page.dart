import 'package:estados/models/usuario.dart';
import 'package:estados/services/usuario_service.dart';
import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
        stream: usuarioService.usuarioStream ,
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
          return snapshot.hasData
          ? Text( snapshot.data.nombre )
          : Text('Pagina 2');
        },
      ),
        
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
                final nuevoUsuario = new Usuario(nombre: 'Jordan', edad: 35);

                usuarioService.cargarUsuario(nuevoUsuario);
              }),
          MaterialButton(
              color: Colors.blue,
              child:
                  Text('Cambiar Edad', style: TextStyle(color: Colors.white)),
              onPressed: () {

                usuarioService.cambiarEdad(30);

              }),
          MaterialButton(
              color: Colors.blue,
              child: Text('Añadir Profesión',
                  style: TextStyle(color: Colors.white)),
              onPressed: () {})
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
