import 'package:conecta_cidadao/componentes/botaoAddImagem.dart';
import 'package:conecta_cidadao/componentes/menuBar.dart';
import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class Registrar extends StatefulWidget {
  const Registrar({super.key});

  @override
  State<Registrar> createState() => _RegistrarState();
}

bool padrao = true;

class _RegistrarState extends State<Registrar> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(alignment: Alignment.center, children: [
        SizedBox(
            width: tela.width,
            height: tela.height,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: tela.height * 0.04,
                      bottom: tela.height * 0.02,
                      left: tela.width * 0.05,
                      right: tela.width * 0.05),
                  width: tela.width,
                  height: tela.height * 0.1,
                  decoration: BoxDecoration(color: corPrincipal),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Registrar Solicitação',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.settings, color: Colors.white))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: tela.width,
                  height: tela.height * 0.9,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(bottom: tela.height * 0.1),
                    child: Column(
                      children: [
                        Container(
                          height: tela.height * 0.065,
                          width: tela.width,
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: tela.width * 0.05),
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Icon(
                                Icons.my_location,
                                color: corDestaque,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 10),
                                width: tela.width * 0.8,
                                child: Text(
                                  'Av. Rivaldo Gomes Guimarães, nº 1020, CIA I, Qd06 - Simões Filho',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: corPrincipal),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: tela.width * 0.05, vertical: 5),
                          height: tela.height * 0.065,
                          width: tela.width,
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: corCinzaBase3,
                              borderRadius: BorderRadius.circular(18)),
                          child: Row(
                            children: [
                              Text(
                                'Categoria',
                                style: TextStyle(
                                    color: corCinzaBase2,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: tela.width * 0.05, vertical: 5),
                          height: tela.height * 0.065,
                          width: tela.width,
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: corCinzaBase3,
                              borderRadius: BorderRadius.circular(18)),
                          child: Row(
                            children: [
                              Text(
                                'Sub-Categoria',
                                style: TextStyle(
                                    color: corCinzaBase2,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: corCinzaBase3,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: tela.width * 0.05),
                          width: tela.width,
                          height: tela.height * 0.05,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: corTextoNormal),
                                  'Imagens'),
                              Text(
                                  style: TextStyle(
                                      fontSize: 12, color: corTextoNormal),
                                  'Anexe ao menos 1 foto para melhor avaliação do registro.')
                            ],
                          ),
                        ),
                        SizedBox(
                          width: tela.width,
                          height: tela.height * 0.2,
                          child: SingleChildScrollView(
                            padding: EdgeInsets.symmetric(
                                horizontal: tela.width * 0.05),
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Botaoaddimagem(
                                    imgCarregada: true,
                                    imagem:
                                        'assets/img/istockphoto-95658927-612x612.jpg'),
                                Botaoaddimagem(imgCarregada: false, imagem: ''),
                                Botaoaddimagem(imgCarregada: false, imagem: ''),
                                Botaoaddimagem(imgCarregada: false, imagem: ''),
                                Botaoaddimagem(imgCarregada: false, imagem: ''),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          color: corCinzaBase3,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(left: tela.width * 0.05),
                          width: tela.width,
                          height: tela.height * 0.03,
                          child: Text('Localização',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: corTextoNormal)),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: tela.width * 0.05),
                          width: tela.width,
                          height: tela.height * 0.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                  borderRadius: BorderRadius.circular(18),
                                  onTap: () {},
                                  child: Container(
                                    width: tela.width * 0.4,
                                    height: tela.height * 0.06,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: corPrincipal,
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    child: Text(
                                      'Usar minha\nlocalização  Atual',
                                      style: TextStyle(
                                          color: Colors.white, height: 1),
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                              Container(
                                width: tela.width * 0.4,
                                height: tela.height * 0.06,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: corCinzaBase3,
                                    borderRadius: BorderRadius.circular(18)),
                                child: InkWell(
                                    onTap: () {},
                                    child: Text(
                                      'Definir local\nno mapa',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(height: 1),
                                    )),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: corCinzaBase3,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: tela.width * 0.05),
                          width: tela.width,
                          height: tela.height * 0.05,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: corTextoNormal),
                                  'Observação'),
                              Text(
                                  style: TextStyle(
                                      fontSize: 12, color: corTextoNormal),
                                  'Deixe a baixo mais detalhes sobre sua solicitação.')
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            margin: EdgeInsets.symmetric(
                                horizontal: tela.width * 0.05),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                                border:
                                    Border.all(color: corCinzaBase3, width: 1),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(2, 2),
                                      blurRadius: 3,
                                      blurStyle: BlurStyle.normal)
                                ]),
                            child: TextField(
                                maxLines: 5,
                                decoration: InputDecoration(
                                  alignLabelWithHint: true,
                                  label: Text(
                                    'Deixe sua mensagem aqui...',
                                    style: TextStyle(
                                        color: corCinzaBase, fontSize: 14),
                                  ),
                                  border: InputBorder.none,
                                  counterText: null,
                                ))),
                        InkWell(
                            borderRadius: BorderRadius.circular(18),
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.symmetric(vertical: 40),
                              width: tela.width * 0.9,
                              height: tela.height * 0.06,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: corPrincipal,
                                  borderRadius: BorderRadius.circular(18)),
                              child: Text(
                                'Enviar',
                                style: TextStyle(
                                    color: Colors.white,
                                    height: 1,
                                    fontWeight: FontWeight.w900),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            )),
        Positioned(
            bottom: 10,
            child: Menubar(home: false, todosRegistros: false, registro: true))
      ]),
    ));
  }
}
