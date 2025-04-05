import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class Botaolistregistro extends StatefulWidget {
  final bool notificacao;
  const Botaolistregistro({super.key, required this.notificacao});

  @override
  State<Botaolistregistro> createState() => _BotaolistregistroState();
}

class _BotaolistregistroState extends State<Botaolistregistro> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/resumoRegistros');
      },
      child: Stack(alignment: Alignment.topRight, children: [
        Container(
          width: tela.height * 0.07,
          height: tela.height * 0.07,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.all(Radius.circular(18))),
          child: Icon(
            Icons.comment,
            color: Colors.white,
          ),
        ),
        widget.notificacao
            ? Container(
                width: tela.height * 0.02,
                height: tela.height * 0.02,
                decoration: BoxDecoration(
                    color: const Color(0xFFCC3A3A),
                    border: Border.all(
                        color: corPrincipal,
                        width: 3.5,
                        strokeAlign: BorderSide.strokeAlignOutside),
                    borderRadius: BorderRadius.all(Radius.circular(18))),
              )
            : Container(),
      ]),
    );
  }
}
