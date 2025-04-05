// ignore_for_file: file_names, must_be_immutable

import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class InputTextComp extends StatefulWidget {
  final String tipo;
  final bool senha;
  bool revelar;
  final TextEditingController controlador;
  InputTextComp(
      {super.key,
      required this.tipo,
      required this.senha,
      required this.revelar,
      required this.controlador});

  @override
  State<InputTextComp> createState() => _InputTextCompState();
}

class _InputTextCompState extends State<InputTextComp> {
  ver() {
    setState(() {
      if (widget.revelar == true) {
        widget.revelar = false;
      } else {
        widget.revelar = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controlador,
      obscureText: widget.revelar,
      decoration: InputDecoration(
          suffixIcon: widget.senha == true
              ? IconButton(
                  onPressed: () {
                    ver();
                  },
                  icon: const Icon(
                    Icons.remove_red_eye_rounded,
                    color: corCinzaBase2,
                  ))
              : null,
          labelText: widget.tipo,
          labelStyle: const TextStyle(color: corCinzaBase2, fontSize: 15),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: corCinzaBase),
              borderRadius: BorderRadius.all(Radius.circular(18))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(width: 1, color: corPrincipal),
              borderRadius: BorderRadius.all(Radius.circular(18)))),
    );
  }
}
