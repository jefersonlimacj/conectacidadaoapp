import 'package:conecta_cidadao/componentes/menuBar.dart';
import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class Telaconstrucao extends StatefulWidget {
  const Telaconstrucao({super.key});

  @override
  State<Telaconstrucao> createState() => _TelaconstrucaoState();
}

class _TelaconstrucaoState extends State<Telaconstrucao> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          width: tela.width,
          height: tela.height,
          decoration: BoxDecoration(color: corCinzaBase3),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.settings_rounded,
                  color: corDestaque,
                  size: 100,
                ),
                Text(
                  'Tela em Construção',
                  style: TextStyle(color: corPrincipal),
                )
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 10,
            child: Menubar(home: true, todosRegistros: true, registro: true))
      ]),
    );
  }
}
