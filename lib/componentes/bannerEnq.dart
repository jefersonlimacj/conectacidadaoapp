import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class BannerEnquete extends StatefulWidget {
  const BannerEnquete({super.key});

  @override
  State<BannerEnquete> createState() => _BannerEnqueteState();
}

class _BannerEnqueteState extends State<BannerEnquete> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          color: corCinzaBase3, borderRadius: BorderRadius.circular(18)),
      width: tela.width * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: tela.width * 0.45,
            child: Text(
              'Sit nostra eleifend molestie consectetur etiam blandit varius, laoreet velit porttitor',
              style: TextStyle(color: corTextoNormal),
            ),
          ),
          FilledButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.white),
              foregroundColor: WidgetStatePropertyAll(corPrincipal),
            ),
            child: Text('Assinar'),
          )
        ],
      ),
    );
  }
}
