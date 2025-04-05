import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class BarraStatus extends StatefulWidget {
  final String status;
  const BarraStatus({super.key, required this.status});

  @override
  State<BarraStatus> createState() => _BarraStatusState();
}

class _BarraStatusState extends State<BarraStatus> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;

    var circuloCheio = Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          color: widget.status == 'PN'
              ? corNegado
              : widget.status == 'PE'
                  ? corEnviado
                  : widget.status == 'AR'
                      ? corAguardando
                      : widget.status == 'AA'
                          ? corAgendado
                          : corConcluido,
          borderRadius: BorderRadius.circular(10)),
    );

    var circuloVazio = Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 2, color: corCinzaBase3),
          borderRadius: BorderRadius.circular(10)),
    );
    var sa = [
      circuloCheio,
      circuloCheio,
      circuloCheio,
      circuloCheio,
      circuloCheio,
    ];
    var aa = [
      circuloCheio,
      circuloCheio,
      circuloCheio,
      circuloCheio,
      circuloVazio,
    ];
    var ar = [
      circuloCheio,
      circuloCheio,
      circuloCheio,
      circuloVazio,
      circuloVazio,
    ];
    var pe = [
      circuloCheio,
      circuloCheio,
      circuloVazio,
      circuloVazio,
      circuloVazio,
    ];
    var pn = [
      circuloCheio,
      circuloVazio,
      circuloVazio,
      circuloVazio,
      circuloVazio,
    ];

    return Container(
      child: Column(
        children: [
          Text(
            'Status',
            style: TextStyle(color: corTextoNormal),
          ),
          Container(
            height: tela.height * 0.05,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                Container(
                  width: tela.width,
                  height: 7,
                  decoration: BoxDecoration(
                      color: corCinzaBase3,
                      borderRadius: BorderRadius.circular(18)),
                ),
                Container(
                  width: widget.status == 'PN'
                      ? tela.width * 0
                      : widget.status == 'PE'
                          ? tela.width * 0.25
                          : widget.status == 'AR'
                              ? tela.width * 0.45
                              : widget.status == 'AA'
                                  ? tela.width * 0.68
                                  : tela.width * 1,
                  height: 7,
                  decoration: BoxDecoration(
                      color: widget.status == 'PN'
                          ? corNegado
                          : widget.status == 'PE'
                              ? corEnviado
                              : widget.status == 'AR'
                                  ? corAguardando
                                  : widget.status == 'AA'
                                      ? corAgendado
                                      : corConcluido,
                      borderRadius: BorderRadius.circular(18)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: widget.status == 'PN'
                      ? pn
                      : widget.status == 'PE'
                          ? pe
                          : widget.status == 'AR'
                              ? ar
                              : widget.status == 'AA'
                                  ? aa
                                  : sa,
                )
              ],
            ),
          ),
          Text(
            widget.status == 'PN'
                ? 'Pedido Negado'
                : widget.status == 'PE'
                    ? 'Processando Envio'
                    : widget.status == 'AR'
                        ? 'Aguardando Resposta'
                        : widget.status == 'AA'
                            ? 'Atendimento Agendado'
                            : 'Solicitação Atendida',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: widget.status == 'PN'
                  ? corNegado
                  : widget.status == 'PE'
                      ? corEnviado
                      : widget.status == 'AR'
                          ? corAguardando
                          : widget.status == 'AA'
                              ? corAgendado
                              : corConcluido,
            ),
          ),
        ],
      ),
    );
  }
}
