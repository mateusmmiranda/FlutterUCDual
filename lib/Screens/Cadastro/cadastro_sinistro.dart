// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:flutter_seguradora_ucdual/Screens/Cadastro/preview_page.dart';
import 'package:flutter_seguradora_ucdual/Screens/Home/home_screen.dart';
import 'package:flutter_seguradora_ucdual/widgets/anexo_CNH.dart';
import 'dart:io';
import 'dart:ui';

import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class CadastroSinistro extends StatefulWidget {
  CadastroSinistro({Key? key}) : super(key: key);

  @override
  _CadastroSinistroState createState() => _CadastroSinistroState();
}

class _CadastroSinistroState extends State<CadastroSinistro> {
  File? arquivoCNH, sinistro1, sinistro2, sinistroboletim;
  final picker = ImagePicker();

  Future getFileFromGalleryCNH() async {
    PickedFile? file = await picker.getImage(source: ImageSource.gallery);

    if (file != null) {
      setState(() => arquivoCNH = File(file.path));
    }
  }

  Future getFileFromGallerySinistro1() async {
    PickedFile? file = await picker.getImage(source: ImageSource.gallery);

    if (file != null) {
      setState(() => sinistro1 = File(file.path));
    }
  }

  Future getFileFromGallerySinistro2() async {
    PickedFile? file = await picker.getImage(source: ImageSource.gallery);

    if (file != null) {
      setState(() => sinistro2 = File(file.path));
    }
  }

  Future getFileFromGallerySinistroBoletim() async {
    PickedFile? file = await picker.getImage(source: ImageSource.gallery);

    if (file != null) {
      setState(() => sinistroboletim = File(file.path));
    }
  }

  showPreview(file) async {
    File? arq = await Get.to(() => PreviewPage(file: file));

    if (arq != null) {
      setState(() => sinistro1 = arq);
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
                          'Cadastrar Sinistro',
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Insira as informações e fotos',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        OutlinedButton.icon(
                          icon: Icon(Icons.attach_file),
                          label: Text('Carregue  uma foto do acidente'),
                          onPressed: () => getFileFromGallerySinistro1(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        OutlinedButton.icon(
                          icon: Icon(Icons.attach_file),
                          label: Text('Carregue  outra foto do acidente'),
                          onPressed: () => getFileFromGallerySinistro2(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        OutlinedButton.icon(
                          icon: Icon(Icons.attach_file),
                          label: Text('Carregue a foto da sua  CNH'),
                          onPressed: () => getFileFromGalleryCNH(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        OutlinedButton.icon(
                          icon: Icon(Icons.attach_file),
                          label: Text(
                              'Caso seja assegurado, inclua a foto do boletim de ocorrência'),
                          onPressed: () => getFileFromGallerySinistroBoletim(),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Preeencha os campos abaixo apenas se houve terceiros no acidente',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Placa',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Modelo',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Proprietário',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Telefone',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          child: Text(
                            'Voltar para a Home',
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
                                    builder: (context) => HomeScreen()),
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
                                  'Cadastrar Sinistro',
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
    );
  }
}
