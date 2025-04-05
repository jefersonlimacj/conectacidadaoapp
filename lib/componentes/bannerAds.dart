import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class Bannerads extends StatefulWidget {
  const Bannerads({super.key});

  @override
  State<Bannerads> createState() => _BanneradsState();
}

class _BanneradsState extends State<Bannerads> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: tela.width * 0.9,
        height: tela.height * 0.2,
        decoration: BoxDecoration(
            color: corDestaque, borderRadius: BorderRadius.circular(18)));
  }
}
