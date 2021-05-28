import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estilo = new TextStyle(fontSize: 25);
  int _conteo = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número de clicks:',
              style: _estilo,
            ),
            Text(
              "$_conteo",
              style: _estilo,
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      SizedBox(width: 30),
      FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero)),
      Expanded(child: SizedBox()),
      FloatingActionButton(onPressed: _restar, child: Icon(Icons.remove)),
      SizedBox(width: 5.0),
      FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add))
    ]);
  }

  void _agregar() {
    setState(() => _conteo++);
  }

  void _restar() {
    setState(() => _conteo--);
  }

  void _reset() {
    setState(() => _conteo = 0);
  }
}
