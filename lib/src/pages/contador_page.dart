import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {
  
  final _estiloTexto = new TextStyle(fontSize: 25);

  int _conteo = 0;

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
             Text( 'Numero de taps:',style: _estiloTexto ),
             Text( '$_conteo',style: _estiloTexto ),
          ],
        ),
        ),
      floatingActionButton: _botones()
    );
  
  }

  Widget _botones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
      SizedBox(width: 30),
      FloatingActionButton( child: Icon(Icons.exposure_zero), onPressed: null),
      Expanded(child: SizedBox( width: 5.0 )),
      FloatingActionButton( child: Icon(Icons.remove), onPressed: null),
      SizedBox( width: 5.0 ),
      FloatingActionButton( child: Icon(Icons.add), onPressed: null),
    ]);
    
    
  }

}