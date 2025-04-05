import 'package:flutter/material.dart';

class Imgperfilhome extends StatefulWidget {
  final bool foto;
  const Imgperfilhome({super.key, required this.foto});

  @override
  State<Imgperfilhome> createState() => _ImgperfilhomeState();
}

class _ImgperfilhomeState extends State<Imgperfilhome> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return widget.foto
        ? InkWell(
            onTap: () {},
            child: Container(
              width: tela.height * 0.07,
              height: tela.height * 0.07,
              decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.all(Radius.circular(80)),
                  border: Border.all(
                      width: 3,
                      color: Colors.white,
                      strokeAlign: BorderSide.strokeAlignOutside)),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/a/ACg8ocIXDG-jnmYU04rGx1T79d094DYmH4meYDkgzy1WJUjB59nSvdRmFQ=s83-c-mo')),
            ),
          )
        : InkWell(
            onTap: () {},
            child: Container(
              width: tela.height * 0.07,
              height: tela.height * 0.07,
              decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.all(Radius.circular(80))),
              child: Icon(
                Icons.add_photo_alternate_rounded,
                color: Colors.white,
              ),
            ),
          );
  }
}
