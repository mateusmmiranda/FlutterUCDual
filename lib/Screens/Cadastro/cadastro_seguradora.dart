import 'package:flutter/material.dart';
import 'package:flutter_seguradora_ucdual/Screens/Home/home_screen.dart';

// A FAZER

class CadastroSeguradora extends StatelessWidget {
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
                Color(0xFF4F4F4F),
                Color(0xFF757575),
                Color(0xFF372930),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 80,
              ),
              Image.asset('assets/images/logo.jpg'),
              SizedBox(
                height: 15,
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
                          height: 30,
                        ),
                        Text(
                          'Cadastro de Seguradoras e Corretores',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Corretor:',
                              suffixIcon: Icon(
                                Icons.person,
                                size: 17,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Tel Corretor:',
                              suffixIcon: Icon(
                                Icons.phone,
                                size: 17,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'E-mail Corretor:',
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
                            decoration: InputDecoration(
                              labelText: 'Seguradora:',
                              suffixIcon: Icon(
                                Icons.store,
                                size: 17,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Apólice:',
                              suffixIcon: Icon(
                                Icons.text_fields,
                                size: 17,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Franquia:',
                              suffixIcon: Icon(
                                Icons.text_fields,
                                size: 17,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 250,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: 'Cobertura(Total, Parcial):',
                              suffixIcon: Icon(
                                Icons.safety_divider,
                                size: 17,
                              ),
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
                            'Voltar a página inicial',
                            style: TextStyle(color: Colors.grey),
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
                                  'Cadastrar',
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
