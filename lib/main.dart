import 'package:conecta_cidadao/props/cores.dart';
import 'package:conecta_cidadao/telas/cadastro.dart';
import 'package:conecta_cidadao/telas/home.dart';
import 'package:conecta_cidadao/telas/login.dart';
import 'package:conecta_cidadao/telas/recuperarSenha.dart';
import 'package:conecta_cidadao/telas/recuperarSenha1.dart';
import 'package:conecta_cidadao/telas/registrar.dart';
import 'package:conecta_cidadao/telas/resumoRegistros.dart';
import 'package:conecta_cidadao/telas/telaConstrucao.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ConectaCidadao());
}

class ConectaCidadao extends StatefulWidget {
  const ConectaCidadao({super.key});

  @override
  State<ConectaCidadao> createState() => _ConectaCidadaoState();
}

bool logado = false;

class _ConectaCidadaoState extends State<ConectaCidadao> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Conecta Cidadão',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: const ColorScheme.light(primary: corPrincipal),
      ),
      initialRoute: logado ? '/home' : '/login',
      routes: {
        '/home': (context) => HomePage(),
        '/login': (context) => Login(),
        '/cadastro': (context) => Cadastro(),
        '/recSenha': (context) => RecuperarSenha(),
        '/recSenha1': (context) => RecuperarSenha1(),
        '/registrar': (context) => Registrar(),
        '/resumoRegistros': (context) => Resumoregistros(),
        '/telaConstrucao': (context) => Telaconstrucao(),
      },
    );
  }
}
