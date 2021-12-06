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
        title: Text("IImagens Filiais"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Card(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/foto1.jpg'),
            Image.asset('assets/images/foto2.jpg'),
            Image.asset('assets/images/foto3.jpg'),
            Image.asset('assets/images/foto1.jpg'),
            Text('Filial Jose Faria, N° 600'),
            Text("Filial Belo Horizonte, N° 1250, Avenida do Contorno "),
            Text("Horario de funcionamento:08 as 19, segunda a sexta "),
          ],
        ),
      ),
    );
  }
}
