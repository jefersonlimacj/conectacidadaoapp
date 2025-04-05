import 'package:conecta_cidadao/componentes/cxStatus.dart';
import 'package:conecta_cidadao/componentes/cxTipoCategoria.dart';
import 'package:conecta_cidadao/props/cores.dart';
import 'package:conecta_cidadao/telas/telaRegistro.dart';
import 'package:flutter/material.dart';

class Cardsoliciatacaores extends StatefulWidget {
  final String categoria;
  final String subCategoria;
  final String status;
  final String data;
  final int protocolo;
  const Cardsoliciatacaores({
    super.key,
    required this.categoria,
    required this.subCategoria,
    required this.status,
    required this.data,
    required this.protocolo,
  });

  @override
  State<Cardsoliciatacaores> createState() => _CardsoliciatacaoresState();
}

class _CardsoliciatacaoresState extends State<Cardsoliciatacaores> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(10),
        width: tela.width * 0.9,
        height: tela.height * 0.18,
        decoration: BoxDecoration(
            color: corCinzaBase4, borderRadius: BorderRadius.circular(18)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CxTipoCategoria(categoria: widget.categoria),
                Container(
                    width: tela.width * 0.5,
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.subCategoria,
                            style: TextStyle(
                                color: corTextoNormal,
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            widget.categoria,
                            style:
                                TextStyle(color: corTextoNormal, fontSize: 12),
                            overflow: TextOverflow.ellipsis,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: 'Nº Prot.:',
                                  style: TextStyle(
                                      color: corCinzaBase2, fontSize: 12),
                                  children: [
                                TextSpan(
                                    text: widget.protocolo.toString(),
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: corPrincipal,
                                        fontWeight: FontWeight.w700))
                              ]))
                        ])),
                SizedBox(
                  height: tela.height * 0.075,
                  width: tela.height * 0.06,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          debugPrint('Opp');
                          showDialog(
                              context: context,
                              builder: (BuildContext) => AlertDialog(
                                    title: Text('Excluir Solicitação'),
                                    content: Text(
                                        'Deseja exlcluir essa solicitação?'),
                                    actions: [
                                      TextButton(
                                          onPressed: () {}, child: Text('Sim')),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text('Não'),
                                      )
                                    ],
                                  ));
                        },
                        child: Icon(
                          Icons.more_horiz_outlined,
                          color: corTextoNormal,
                        ),
                      ),
                      CxStatus(status: widget.status)
                    ],
                  ),
                )
              ],
            ),
            Divider(
              color: corCinzaBase,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: tela.width * 0.6,
                  height: tela.height * 0.06,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Solicitação',
                          style:
                              TextStyle(color: corTextoNormal, fontSize: 12)),
                      Text(widget.data.toString(),
                          style: TextStyle(
                              color: corPrincipal,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    debugPrint('Ver');
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TelaRegistro(
                              categoria: widget.categoria,
                              subCategoria: widget.subCategoria,
                              status: widget.status,
                              data: widget.data,
                              protocolo: widget.protocolo,
                            )));
                  },
                  child: Container(
                    width: tela.width * 0.2,
                    height: tela.height * 0.05,
                    decoration: BoxDecoration(
                        color: corPrincipal,
                        borderRadius: BorderRadius.circular(18)),
                    child: Center(
                      child: Text(
                        'Ver',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
