import 'package:atm_consultoria/ui/cliente_page.dart';
import 'package:atm_consultoria/ui/contato_page.dart';
import 'package:atm_consultoria/ui/empresa_page.dart';
import 'package:atm_consultoria/ui/servico_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
void _abrirEmpresa(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> EmpresaPage() ));
  }

  void _abrirServico(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> ServicoPage() ));
  }

  void _abrirCliente(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> ClientePage() ));
  }

  void _abrirContato(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> ContatoPage() ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("ATM Consultoria"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        child: Image.asset("images/menu_empresa.png"),
                        onTap: _abrirEmpresa,
                      ),
                      GestureDetector(
                        child: Image.asset("images/menu_servico.png"),
                        onTap: _abrirEmpresa,
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("images/menu_cliente.png"),
                    ),
                    GestureDetector(
                      onTap: _abrirEmpresa,
                      child: Image.asset("images/menu_contato.png"),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
