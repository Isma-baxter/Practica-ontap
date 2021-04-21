import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePageTemp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente Temporal 1'),
      ),
      body: _crearwidgets(context),
    );
  }

  ListView _crearwidgets(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (_, opciones) {
        return ListTile(
          title: Text('Opcion $opciones'),
          subtitle: Text('Subtitulo de la $opciones'),
          leading: Icon(Icons.account_box_rounded),
          trailing: Icon(Icons.keyboard_arrow_right_outlined),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => DetailPage(opciones)));
          },
        );
      },
    );
  }
}

class DetailPage extends StatelessWidget {
  final int opciones;
  DetailPage(this.opciones);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina nueva'),
      ),
      body: Center(
          child: Text(
        'Bienvenido a opcion $opciones',
        style: TextStyle(fontSize: 35),
      )),
    );
  }
}
