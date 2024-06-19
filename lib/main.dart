import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(gfgApp());
}

MaterialApp gfgApp() {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("AppBar"),
        actions: <Widget>[
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.comment),
                tooltip: 'Comment Icon',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('iCONO DE COMENTARIO')));
                },
              );
            },
          ),
          Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.settings),
                tooltip: 'Setting Icon',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('iCONO DE CONFIGURACIÓN')));
                },
              );
            },
          ),
        ],
        backgroundColor: Colors.lightBlueAccent,
        elevation: 50.0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              tooltip: 'Menu Icon',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('ICONO DE MENÚ')));
              },
            );
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: const Center(
        child: Text(
          "Tarea App Bar",
          style: TextStyle(fontSize: 24),
        ),
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
}
