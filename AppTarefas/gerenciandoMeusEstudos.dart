import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerenciando Meus Estudos',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Lista de Curso"),
        ),
        body: ListView(
          children: [
            MeuApp('Dart'),
            MeuApp('Flutter'),
            MeuApp('JavaScript'),
            MeuApp('HTML'),
            MeuApp('CSS'),
            MeuApp('Node'),
            MeuApp('Java'),
            MeuApp('Python'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: Icon(Icons.arrow_drop_up)),
      ),
    );
  }
}

class MeuApp extends StatelessWidget {
  final String texto;
const MeuApp(this.texto,{Key?key}): super (key:key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          color: Colors.cyan,
        ),
        Container(
          height: 100,
          color: Colors.white,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.grey,
            ),
            Text(texto),
            ElevatedButton(
              onPressed: () {},
              child: Icon(Icons.arrow_drop_up),
            )
          ]),
        ),
      ],
    );
  }
}

