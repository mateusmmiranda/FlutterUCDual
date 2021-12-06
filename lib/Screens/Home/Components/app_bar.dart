import 'package:flutter/material.dart';

import 'package:flutter_seguradora_ucdual/Screens/Login/login_screen.dart';
import 'menu_item.dart';
import 'package:flutter_seguradora_ucdual/Screens/Cadastro/cadastro_sinistro.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.jpg",
            height: 25,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "Prime".toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {},
          ),
          MenuItem(
            title: "SegundaTela",
            press: () {},
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CadastroSinistro()),
              );
            },
            child: Text('Cadastrar Sinistro',
                style: TextStyle(color: Colors.amber)),
            style: ElevatedButton.styleFrom(primary: Colors.white),
          ),
          MenuItem(
            title: "Quarta Tela",
            press: () {},
          ),
          MenuItem(
            title: "Quinta Tela",
            press: () {},
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text('SAIR', style: TextStyle(color: Colors.amber)),
            style: ElevatedButton.styleFrom(primary: Colors.white),
          ),
        ],
      ),
    );
  }
}
