import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
             Text('Numero de taps:',style: estiloTexto),
             Text('0',style: estiloTexto),
          ],
        ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () {
          print('Hola mundo');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  
  }

}