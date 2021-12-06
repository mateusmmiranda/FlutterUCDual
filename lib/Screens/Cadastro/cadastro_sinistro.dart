import 'package:flutter/material.dart';
import 'package:flutter_seguradora_ucdual/Screens/Cadastro/cadastro_main.dart'; // A FAZER
import 'package:flutter_seguradora_ucdual/Screens/Cadastro/preview_page.dart';
import 'package:flutter_seguradora_ucdual/Screens/Home/home_screen.dart';
import 'package:flutter_seguradora_ucdual/Screens/Login/login_screen.dart';
import 'package:flutter_seguradora_ucdual/constant.dart';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:camera_camera/camera_camera.dart';
import 'package:flutter_seguradora_ucdual/widgets/anexo.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';

class CadastroSinistro extends StatefulWidget {
  CadastroSinistro({Key? key}) : super(key: key);

  @override
  _CadastroSinistroState createState() => _CadastroSinistroState();
}

class _CadastroSinistroState extends State<CadastroSinistro> {
  File? arquivo;
  final picker = ImagePicker();
  Future getFileFromGallery() async {
    PickedFile? file = await picker.getImage(source: ImageSource.gallery);

    if (file != null) {
      setState(() => arquivo = File(file.path));
    }
  }

  showPreview(file) async {
    File? arq = await Get.to(() => PreviewPage(file: file));

    if (arq != null) {
      setState(() => arquivo = arq);
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Cadastro',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
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
                    ElevatedButton.icon(
                      onPressed: () => Get.to(
                        () => CameraCamera(onFile: (file) => showPreview(file)),
                      ),
                      icon: Icon(Icons.camera_alt),
                      label: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Tire uma foto'),
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          textStyle: TextStyle(
                            fontSize: 12,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Text('ou'),
                    ),
                    OutlinedButton.icon(
                      icon: Icon(Icons.attach_file),
                      label: Text('Selecione um arquivo'),
                      onPressed: () => getFileFromGallery(),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()),
                              );
                            },
                            child: Text(
                              'Já tem conta? Clique aqui',
                              style: TextStyle(color: Colors.amber),
                            ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                            ),
                          ),
                        ],
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
