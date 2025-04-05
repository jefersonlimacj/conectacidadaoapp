import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class Botaoaddimagem extends StatefulWidget {
  final bool imgCarregada;
  final String imagem;
  const Botaoaddimagem(
      {super.key, required this.imgCarregada, required this.imagem});

  @override
  State<Botaoaddimagem> createState() => _BotaoaddimagemState();
}

class _BotaoaddimagemState extends State<Botaoaddimagem> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return widget.imgCarregada
        ? InkWell(
            borderRadius: BorderRadius.circular(18),
            child: Stack(children: [
              Container(
                alignment: Alignment.center,
                width: tela.height * 0.18,
                height: tela.height * 0.18,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(color: corCinzaBase3, width: 1),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(2, 2),
                          blurRadius: 3,
                          blurStyle: BlurStyle.normal)
                    ]),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(widget.imagem))),
                    width: tela.height * 0.17,
                    height: tela.height * 0.17),
              ),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: Icon(
                    Icons.refresh_rounded,
                    shadows: [
                      Shadow(
                          color: Colors.black26,
                          offset: Offset(1, 1),
                          blurRadius: 2)
                    ],
                    color: Colors.white,
                  ))
            ]),
          )
        : InkWell(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: tela.height * 0.18,
              height: tela.height * 0.18,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: corCinzaBase3, width: 1),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(2, 2),
                        blurRadius: 3,
                        blurStyle: BlurStyle.normal)
                  ]),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.35,
                    child: Icon(
                      Icons.add_photo_alternate_rounded,
                      size: 60,
                      color: corDestaque,
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 10,
                      child: Icon(
                        Icons.add_box_rounded,
                        color: corPrincipal,
                      ))
                ],
              ),
            ),
          );
  }
}
