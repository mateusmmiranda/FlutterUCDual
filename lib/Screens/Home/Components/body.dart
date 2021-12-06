import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 360,
          height: 504,
          color: Color(0x00ffffff),
          padding: const EdgeInsets.only(left: 50),
          child: Stack(
            children: [
              Positioned.fill(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: 359,
                    height: 507,
                    color: Color(0xbf000000),
                    padding: const EdgeInsets.only(
                        top: 3, bottom: 160, left: 15, right: 15),
                    child: ListView(
                      children: <Widget>[
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 359,
                              height: 34,
                              child: Text(
                                "Necessitou?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffffb700),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.33),
                            SizedBox(
                              width: 335,
                              height: 63,
                              child: Text(
                                "Comunique a Prime via internet ou se preferir nossa central de atendimento:\n4004 2757 ou 0800 701 2757",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.33),
                            SizedBox(
                              width: 336,
                              height: 34,
                              child: Text(
                                "Quero Contratar a Prime, o que fazer?",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffffb700),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.33),
                            SizedBox(
                              width: 341,
                              height: 184,
                              child: Text(
                                "Optou pelo melhor seguro é hora de dar andamento a contratação. É preciso solicitar ao corretor que faça a apólice, essa vai especificar quais são as coberturas oferecidas e direitos e deveres do segurado. Depois de você conferir a apólice ela é encaminhada para a seguradora para que seja feita a aprovação e caso corra tudo certo o seguro será liberado, sendo que ele só começa a valer após o pagamento da primeira parcela.",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
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
                  width: 350,
                  height: 96,
                  child: Text(
                    "Para uma de nossas oficinas autorizadas pela Prime, para saber qual oficina autorizada mais próxima de você é só entrar em contato com um de nossos atendentes, que estão 24h disponíveis para te auxiliar.",
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
                  width: 350,
                  height: 33,
                  child: Text(
                    "Qual oficina devo encaminhar?",
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
        Container(
          width: 360,
          height: 535,
          color: Color(0x00ffffff),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 535,
                color: Color(0xbf000000),
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 361,
                      height: 20,
                      child: Text(
                        "Como solicitar Guincho?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffffb700),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.80),
                    SizedBox(
                      width: 344,
                      height: 62,
                      child: Text(
                        "Se necessário, solicite o serviço de reboque: \n4004 2757 ou 0800 701 2757",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.80),
                    SizedBox(
                      width: 345,
                      height: 20,
                      child: Text(
                        "Como fazer um Boletim de Ocorrência?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffffb700),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.80),
                    SizedBox(
                      width: 344,
                      height: 144,
                      child: Text(
                        "Para isso é preciso ir até a delegacia mais próxima ou então solicitar a polícia no local (para caso de colisões). Muitos estados já permitem que se registre um boletim de ocorrência online que também é aceito. Mas sempre se deve confirmar com a seguradora em que casos ele será necessário, na dúvida sempre registre.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.80),
                    SizedBox(
                      width: 345,
                      height: 36,
                      child: Text(
                        "Posso escolher a oficina que quero fazer o reparo do meu carro?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xffffb700),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.80),
                    SizedBox(
                      width: 344,
                      height: 124,
                      child: Text(
                        "Sim. O segurado não tem obrigação nenhuma de utilizar a oficina indicada pelo seguro, podendo ele escolher a que desejar. Nesse caso é preciso informar sobre o local escolhido, mas vale lembrar que as que são credenciadas a seguradora normalmente possuem uma boa qualidade.",
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
            ],
          ),
        ),
        Container(
          width: 371,
          height: 635,
          color: Color(0x00000000),
          padding: const EdgeInsets.only(right: 50),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 320,
                height: 635,
                color: Color(0xbf000000),
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: ListView(
                  children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 349,
                          height: 40,
                          child: Text(
                            "Como é paga a indenização do seguro auto a terceiros?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffffb700),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        SingleChildScrollView(
                          child: SizedBox(
                            width: 361,
                            height: 210,
                            child: Text(
                              "Isso vai depender do tipo de indenização, mas no geral quando é preciso cobrir reparos o valor pode ser pago direto para a oficina. Já em caso de indenizações por danos morais, invalidez ou custos com atendimento médico e hospitalar poderá ser feito o pagamento em dinheiro. Porém nesses casos o terceiro precisa entrar em contato com a seguradora para acordar essa situação.\n\nAo fazer o contato ele deve informar os dados do segurado, assim como o segurado já deve deixar a seguradora informada.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        SizedBox(
                          width: 355,
                          height: 35,
                          child: Text(
                            "O que é essa tal de franquia do seguro auto?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xffffb700),
                              fontSize: 16,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        SizedBox(
                          width: 354,
                          height: 275,
                          child: Text(
                            "Essa é uma informação que precisa ser verificada, isso porque a franquia é o valor que o segurado terá que pagar em casos de indenização parcela. Funciona assim, a seguradora pagará o valor do conserto, porém o segurado entra com uma participação.\n\nNormalmente os seguros são calculados com a franquia normal, um padrão de valor que a segurado utiliza. Porém essa pode ser ampliada, nesse caso o valor da participação a ser paga será maior, porém isso reduz o valor do seguro. Já na franquia reduzida vai acontecer exatamente o oposto, o valor da franquia será menor e do seguro maior.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
