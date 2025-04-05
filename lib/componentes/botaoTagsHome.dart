import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class Botaotagshome extends StatefulWidget {
  final IconData icone;
  final String classe;

  const Botaotagshome({super.key, required this.icone, required this.classe});

  @override
  State<Botaotagshome> createState() => _BotaotagshomeState();
}

class _BotaotagshomeState extends State<Botaotagshome> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        debugPrint(widget.classe);
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: tela.width * 0.015),
            width: tela.height * 0.075,
            height: tela.height * 0.075,
            decoration: BoxDecoration(
                color: corPrincipal,
                borderRadius: BorderRadius.all(Radius.circular(80))),
            child: Icon(
              widget.icone,
              size: 25,
              color: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            width: tela.height * 0.1,
            height: tela.height * 0.04,
            child: Text(
              widget.classe,
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              style: TextStyle(
                  fontSize: 12,
                  overflow: TextOverflow.ellipsis,
                  color: corTextoNormal,
                  height: 1),
            ),
          )
        ],
      ),
    );
  }
}
