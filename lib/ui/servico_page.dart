import 'package:flutter/material.dart';

class ServicoPage extends StatefulWidget {
  const ServicoPage({Key? key}) : super(key: key);

  @override
  State<ServicoPage> createState() => _ContatoPageState();
}

class _ContatoPageState extends State<ServicoPage> {
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_servico.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Nossos serviços",
                      style: TextStyle(
                          fontSize: 20
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Consultoria"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Cálculo de preços"
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                    "Acompanhamento de projetos"
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
