import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class CxStatus extends StatefulWidget {
  final String status;
  const CxStatus({super.key, required this.status});

  @override
  State<CxStatus> createState() => _CxStatusState();
}

class _CxStatusState extends State<CxStatus> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Container(
      height: tela.height * 0.045,
      width: tela.height * 0.045,
      decoration: BoxDecoration(
          color: widget.status == 'PN'
              ? corNegado
              : widget.status == 'PE'
                  ? corEnviado
                  : widget.status == 'AR'
                      ? corAguardando
                      : widget.status == 'AA'
                          ? corAgendado
                          : widget.status == 'SA'
                              ? corConcluido
                              : corCinzaBase2,
          borderRadius: BorderRadius.circular(10)),
      child: Icon(
        widget.status == 'PN'
            ? Icons.block_rounded
            : widget.status == 'PE'
                ? Icons.report_problem_rounded
                : widget.status == 'AR'
                    ? Icons.schedule_rounded
                    : widget.status == 'AA'
                        ? Icons.pending_actions_rounded
                        : widget.status == 'SA'
                            ? Icons.check_circle_rounded
                            : Icons.question_mark_rounded,
        color: Colors.white,
      ),
    );
  }
}
