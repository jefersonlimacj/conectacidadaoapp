import 'package:conecta_cidadao/componentes/barraStatus.dart';
import 'package:conecta_cidadao/componentes/botaoAddImagem.dart';
import 'package:conecta_cidadao/componentes/cxStatus.dart';
import 'package:conecta_cidadao/componentes/cxTipoCategoria.dart';
import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class TelaRegistro extends StatefulWidget {
  final String categoria;
  final String subCategoria;
  final String status;
  final String data;
  final int protocolo;
  const TelaRegistro(
      {super.key,
      required this.status,
      required this.categoria,
      required this.subCategoria,
      required this.data,
      required this.protocolo});

  @override
  State<TelaRegistro> createState() => _TelaRegistroState();
}

class _TelaRegistroState extends State<TelaRegistro> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: corPrincipal),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: tela.width * 0.05),
            width: tela.width,
            height: tela.height * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: tela.width * 0.25),
                  child: Text(
                    'Solicitação',
                    style: TextStyle(color: corTextoNormal),
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: corPrincipal,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.settings, color: corPrincipal))
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: tela.width * 0.05),
              width: tela.width,
              height: tela.height * 0.15,
              child: Column(
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
                                  style: TextStyle(
                                      color: corTextoNormal, fontSize: 12),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: 'Nº Prot.:',
                                        style: TextStyle(color: corCinzaBase2),
                                        children: [
                                      TextSpan(
                                          text: widget.protocolo.toString(),
                                          style: TextStyle(
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
                                                onPressed: () {},
                                                child: Text('Sim')),
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
                    color: corCinzaBase3,
                  ),
                  Container(
                    width: tela.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Solicitação',
                            style:
                                TextStyle(color: corTextoNormal, fontSize: 12)),
                        Text(widget.data,
                            style: TextStyle(
                                color: corPrincipal,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: corCinzaBase3,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: tela.width * 0.05),
              child: BarraStatus(
                status: widget.status,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: tela.width * 0.05),
              width: tela.width,
              height: tela.height * 0.12,
              child: Text(
                'Previsão de entrega 26/04/2024, serviço aprovado no dia 10/04/2024 pela secretária de Mobilidade Urbana do município. Previsão de entrega 26/04/2024, serviço aprovado no dia 10/04/2024 pela secretária de Mobilidade Urbana do município.Previsão de entrega 26/04/2024, serviço aprovado no dia 10/04/2024 pela secretária de Mobilidade Urbana do município.',
                textAlign: TextAlign.justify,
                overflow: TextOverflow.fade,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: tela.width * 0.05),
              width: tela.width,
              height: tela.height * 0.4,
              child: Column(
                children: [
                  SizedBox(
                    width: tela.width,
                    height: tela.height * 0.1,
                    child: Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          size: 35,
                          color: corPrincipal,
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: tela.width * 0.8,
                          height: tela.height * 0.08,
                          child: Text(
                            'Av. Elmo Serejo de Farias - Nucleo Hab. Rubens Costa Cia I, Simões Filho - BA, 43700-000',
                            style: TextStyle(color: corTextoNormal),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: FlutterMap(
                      options: MapOptions(
                          initialCenter: LatLng(-12.80724, -38.39958),
                          initialZoom: 16,
                          backgroundColor: corCinzaBase),
                      children: [
                        TileLayer(
                          urlTemplate:
                              "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
                        ),
                        MarkerLayer(
                          markers: [
                            Marker(
                                point: LatLng(-12.80724, -38.39958),
                                child: Icon(
                                  Icons.location_on_rounded,
                                  color: corPrincipal,
                                  shadows: [
                                    Shadow(
                                        color: Colors.black12,
                                        offset: Offset(1, 2),
                                        blurRadius: 1)
                                  ],
                                ))
                          ],
                        )
                      ],
                    ),
                    width: tela.width,
                    height: tela.height * 0.3,
                  ),
                ],
              ),
            ),
            Divider(
              color: corCinzaBase3,
            ),
            SizedBox(
              width: tela.width,
              height: tela.height * 0.2,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: tela.width * 0.05),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Botaoaddimagem(
                        imgCarregada: true,
                        imagem: 'assets/img/istockphoto-95658927-612x612.jpg'),
                    Botaoaddimagem(
                        imgCarregada: true,
                        imagem: 'assets/img/basd12323509504340960.jpeg'),
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
              margin: EdgeInsets.symmetric(vertical: 15),
              padding: EdgeInsets.symmetric(
                horizontal: tela.width * 0.05,
              ),
              width: tela.width,
              height: tela.height * 0.15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Seu Comentário',
                    style: TextStyle(
                        fontWeight: FontWeight.w600, color: corTextoNormal),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      'Há muitos buracos na minha rua, prejudicando os veículos que passam por ali e aumentando o risco de assaltos ao passar em horários noturno.',
                      style: TextStyle(color: corTextoNormal))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
