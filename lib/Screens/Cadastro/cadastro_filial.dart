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
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset('assets/images/foto2.jpg'),
                Text('Filial Jose Faria, N° 600'),
                Image.asset('assets/images/foto3.jpg'),
                Text("Filial Belo Horizonte, N° 1250, Avenida do Contorno "),
                Image.asset('assets/images/foto4.jpg'),
                Text("Horario de funcionamento:08 as 19, segunda a sexta "),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
