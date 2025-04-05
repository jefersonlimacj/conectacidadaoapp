import 'dart:ui';

import 'package:conecta_cidadao/componentes/botaoMenuBar.dart';
import 'package:flutter/material.dart';

class Menubar extends StatefulWidget {
  final bool home;
  final bool todosRegistros;
  final bool registro;

  const Menubar(
      {super.key,
      required this.home,
      required this.todosRegistros,
      required this.registro});

  @override
  State<Menubar> createState() => _MenubarState();
}

class _MenubarState extends State<Menubar> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Container(
      height: tela.height * 0.08,
      width: tela.width * 0.6,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          boxShadow: [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 0),
                blurRadius: 3,
                blurStyle: BlurStyle.outer)
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        clipBehavior: Clip.hardEdge,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: tela.height * 0.08,
            width: tela.width * 0.6,
            decoration: BoxDecoration(
              color: const Color(0x90FFFFFF),
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Botaomenubar(
                  icone: Icons.home_rounded,
                  tela: '/home',
                  ativo: widget.home,
                ),
                Botaomenubar(
                  icone: Icons.question_answer_rounded,
                  tela: '/telaConstrucao',
                  ativo: widget.todosRegistros,
                ),
                Botaomenubar(
                  icone: Icons.loupe_rounded,
                  tela: '/registrar',
                  ativo: widget.registro,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
