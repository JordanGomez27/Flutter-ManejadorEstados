import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
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
              child: Text('Establecer Usuario', style: TextStyle( color: Colors.white )),
              onPressed: (){

              }
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white )),
              onPressed: (){

              }
            ),
            MaterialButton(
              color: Colors.blue,
              child: Text('Añadir Profesión', style: TextStyle( color: Colors.white )),
              onPressed: (){

              }
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.ac_unit),
          onPressed: () {
            Navigator.pushNamed(context, 'pagina1');
          }),
    );
  }
}