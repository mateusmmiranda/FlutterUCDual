import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Tela(), debugShowCheckedModeBanner: false));
}

class Tela extends StatefulWidget {
  Tela({Key? key}) : super(key: key);

  @override
  _TelaState createState() => _TelaState();
}

class _TelaState extends State<Tela> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Imagem Filial Contagem"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/foto1.jpg'),
            Text('Imagem 1'),
            Image.asset('assets/images/foto2.jpg'),
            Text('Imagem 2'),
            Image.asset('assets/images/foto3.jpg'),
            Text('Imagem 3'),
            Image.asset('assets/images/foto1.jpg'),
            Text('Imagem 4'),
          ],
        ),
      ),
    );
  }
}
