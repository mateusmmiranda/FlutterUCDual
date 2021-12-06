// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:flutter_seguradora_ucdual/Screens/Cadastro/preview_page.dart';

import 'package:flutter_seguradora_ucdual/Screens/Login/login_screen.dart';

import 'dart:io';
import 'dart:ui';

import 'package:flutter_seguradora_ucdual/widgets/anexo.dart';
import 'package:flutter_seguradora_ucdual/widgets/anexo_CNH.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class CadastroCliente extends StatefulWidget {
  CadastroCliente({Key? key}) : super(key: key);

  @override
  _CadastroClienteState createState() => _CadastroClienteState();
}

class _CadastroClienteState extends State<CadastroCliente> {
  File? arquivo, arquivoCNH;

  final picker = ImagePicker();
  Future getFileFromGallery() async {
    PickedFile? file = await picker.getImage(source: ImageSource.gallery);

    if (file != null) {
      setState(() => arquivo = File(file.path));
    }
  }

  Future getFileFromGalleryCNH() async {
    PickedFile? file = await picker.getImage(source: ImageSource.gallery);

    if (file != null) {
      setState(() => arquivoCNH = File(file.path));
    }
  }

  showPreview(file) async {
    File? arq = await Get.to(() => PreviewPage(file: file));

    if (arq != null) {
      setState(() => arquivo = arq);
      Get.back();
    }
  }

  showPreviewCNH(file) async {
    File? arqCNH = await Get.to(() => PreviewPage(file: file));

    if (arqCNH != null) {
      setState(() => arquivoCNH = arqCNH);
      Get.back();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                //background em gradiente
                Color(0xFF4F4F4F), //cor 1
                Color(0xFF757575),
                Color(0xFF372930), // cor 3
              ])),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Image.asset('assets/images/logo.jpg'),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Prime Automotive',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 480,
                  width: 325,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListView(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Cadastro',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Insira suas informações',
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Seu Email',
                                suffixIcon: Icon(
                                  Icons.email,
                                  size: 17,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 250,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Sua Senha',
                                suffixIcon: Icon(
                                  Icons.remove_moderator_rounded,
                                  size: 17,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 250,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Confirme sua senha',
                                suffixIcon: Icon(
                                  Icons.remove_moderator_rounded,
                                  size: 17,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          if (arquivo != null) Anexo(arquivo: arquivo!),
                          OutlinedButton.icon(
                            icon: Icon(Icons.attach_file),
                            label: Text('Selecione uma foto sua'),
                            onPressed: () => getFileFromGallery(),
                          ),
                          if (arquivoCNH != null)
                            AnexoCNH(arquivoCNH: arquivoCNH!),
                          OutlinedButton.icon(
                            icon: Icon(Icons.attach_file),
                            label: Text('Selecione uma foto da sua CNH'),
                            onPressed: () => getFileFromGalleryCNH(),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                            child: Text(
                              'Já tem uma conta? Clique aqui',
                              style: TextStyle(color: Colors.amber),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()),
                                );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                width: 250,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(colors: [
                                    Color(0xFF4F4F4F),
                                    Color(0xFF757575),
                                    Color(0xFF372930),
                                  ]),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(12.0),
                                  child: Text(
                                    'Efetuar Cadastro',
                                    style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
