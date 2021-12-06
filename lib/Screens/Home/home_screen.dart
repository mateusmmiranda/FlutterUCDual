import 'package:flutter/material.dart';
import 'package:flutter_seguradora_ucdual/Screens/Home/Components/body.dart';
import 'Components/app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //Esse size vai dar o total de tamanho e largura da tela
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(),
            Home(),
            Spacer(),
            Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
