import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class Botaomenubar extends StatefulWidget {
  final IconData icone;
  final String tela;
  final bool ativo;

  const Botaomenubar(
      {super.key,
      required this.icone,
      required this.tela,
      required this.ativo});

  @override
  State<Botaomenubar> createState() => _BotaomenubarState();
}

class _BotaomenubarState extends State<Botaomenubar> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: () {
        debugPrint(widget.tela);
        Navigator.pushNamed(context, widget.tela);
      },
      child: Container(
        height: tela.height * 0.07,
        width: tela.width * 0.18,
        decoration: BoxDecoration(
            color: widget.ativo
                ? const Color(0xFFFFFFFF)
                : const Color(0x90FFFFFF),
            borderRadius: BorderRadius.all(Radius.circular(50)),
            boxShadow: [
              BoxShadow(
                  color: widget.ativo ? Colors.black26 : Colors.transparent,
                  offset: Offset(2, 2),
                  blurRadius: 5)
            ]),
        child: Icon(
          widget.icone,
          color: widget.ativo ? corPrincipal : corCinzaBase,
        ),
      ),
    );
  }
}
