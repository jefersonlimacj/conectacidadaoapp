import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class BannerNovidades extends StatefulWidget {
  const BannerNovidades({super.key});

  @override
  State<BannerNovidades> createState() => _BannernovState();
}

class _BannernovState extends State<BannerNovidades> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: corCinzaBase3, borderRadius: BorderRadius.circular(18)),
      width: tela.width * 0.65,
      child: Row(
        children: [
          Container(
            width: tela.width * 0.3,
            decoration: BoxDecoration(
                color: corDestaque,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    bottomLeft: Radius.circular(18))),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: tela.width * 0.32,
                  height: tela.width * 0.25,
                  child: Text(
                    'Sit nostra eleifend molestie consectetur etiam blandit varius, laoreet velit porttitor, consectetur etiam blandit varius, consectetur etiam blandit varius,',
                    overflow: TextOverflow.fade,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: corTextoNormal, fontSize: 12),
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.white),
                    foregroundColor: WidgetStatePropertyAll(corPrincipal),
                  ),
                  child: Text('Saiba mais'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
