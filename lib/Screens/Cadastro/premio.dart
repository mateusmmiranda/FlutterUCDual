import 'package:flutter/material.dart';

class premiacao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 1250,
          height: 504,
          color: Color(0x00ffffff),
          padding: const EdgeInsets.only(left: 50),
          child: Stack(
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 1250,
                    height: 507,
                    color: Color(0xbf000000),
                    padding: const EdgeInsets.only(
                        top: 3, bottom: 160, left: 15, right: 15),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 1250,
                          height: 34,
                          child: Text(
                            "Premiações",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffffb700),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.33),
                        SizedBox(
                          width: 1250,
                          height: 63,
                          child: Text(
                            "Na Prime você tem acesso à diversos pontos de premiação que podem ser trocados por produtos, descontos na franquia e na renovação do seu seguro.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.33),
                        SizedBox(
                          width: 1250,
                          height: 34,
                          child: Text(
                            "Como acumular pontos?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffffb700),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.33),
                        SizedBox(
                          width: 1250,
                          height: 184,
                          child: Text(
                            "Sempre que você utilizar um de nossos serviços você acumula pontos. Além disso manter seu cadastro atualizado e fazer avaliações das oficinas e dos serviços podem lhe garantir ainda mais pontos. ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 396,
                child: SizedBox(
                  width: 1250,
                  height: 96,
                  child: Text(
                    "Temos diversos parceiros onde nossos clientes podem utilizar seus pontos acumulados. Acumule pontos, cadastre-se em nossos parceiros e troque seus pontos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 355,
                child: SizedBox(
                  width: 1250,
                  height: 33,
                  child: Text(
                    "Nossos parceiros",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffffb700),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
