import 'package:conecta_cidadao/componentes/bannerAds.dart';
import 'package:conecta_cidadao/componentes/bannerEnq.dart';
import 'package:conecta_cidadao/componentes/bannerNov.dart';
import 'package:conecta_cidadao/componentes/botaoListRegistro.dart';
import 'package:conecta_cidadao/componentes/botaoTagsHome.dart';
import 'package:conecta_cidadao/componentes/imgPerfilHome.dart';
import 'package:conecta_cidadao/componentes/menuBar.dart';
import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Container(
            height: tela.height,
            width: tela.width,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                      vertical: tela.height * 0.03,
                      horizontal: tela.width * 0.05),
                  height: tela.height * 0.3,
                  width: tela.width,
                  decoration: BoxDecoration(color: corPrincipal, boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 3),
                        blurRadius: 5)
                  ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/img/Conecta_Cidadao_logo2_PB.png',
                            scale: tela.width * 0.03,
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
                                    icon: Icon(Icons.settings,
                                        color: Colors.white))
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: tela.height * 0.065,
                        width: tela.width,
                        padding: EdgeInsets.all(15),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Colors.white24,
                            borderRadius: BorderRadius.circular(18)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.my_location,
                              color: Colors.white,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 10),
                              width: tela.width * 0.75,
                              child: Text(
                                'Av. Rivaldo Gomes Guimarães, nº 1020, CIA I, Qd06 - Simões Filho',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Imgperfilhome(foto: true),
                          Container(
                            margin: EdgeInsets.all(5),
                            width: tela.height * 0.26,
                            height: tela.height * 0.07,
                            alignment: Alignment.centerLeft,
                            child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  children: [
                                    TextSpan(text: 'Olá, '),
                                    TextSpan(
                                        text: 'Jeferson Lima',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700))
                                  ]),
                            ),
                          ),
                          Botaolistregistro(
                            notificacao: true,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: tela.width,
                  height: tela.height * 0.7,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                      bottom: tela.height * 0.1,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: tela.width * 0.05),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tags Relevantes',
                                style: TextStyle(color: corTextoNormal),
                              ),
                              TextButton(
                                  onPressed: () {}, child: Text('Ver Todas'))
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: tela.height * 0.14,
                          width: tela.width,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(
                                horizontal: tela.width * 0.05),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    debugPrint('Seguir');
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          right: tela.width * 0.02,
                                        ),
                                        width: tela.height * 0.075,
                                        height: tela.height * 0.075,
                                        decoration: BoxDecoration(
                                            color: Colors.white24,
                                            border: Border.all(
                                                width: 3,
                                                color: corPrincipal,
                                                strokeAlign: BorderSide
                                                    .strokeAlignInside),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(80))),
                                        child: Icon(
                                          Icons.add_rounded,
                                          size: 40,
                                          color: corPrincipal,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 10),
                                        width: tela.height * 0.1,
                                        child: Text(
                                          'Sugerir',
                                          textAlign: TextAlign.center,
                                          style:
                                              TextStyle(color: corTextoNormal),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Botaotagshome(
                                    classe: 'Água/\nEsgoto',
                                    icone: Icons.water_drop_rounded),
                                Botaotagshome(
                                    classe: 'Comércio/\nIrregular',
                                    icone: Icons.storefront_rounded),
                                Botaotagshome(
                                    icone: Icons.wb_incandescent_rounded,
                                    classe: 'Iluminação/\nEnergia'),
                                Botaotagshome(
                                    icone: Icons.cleaning_services_rounded,
                                    classe: 'Manuntenção/\nLimpeza'),
                                Botaotagshome(
                                    icone: Icons.traffic_rounded,
                                    classe: 'Vias/\nTrânsito')
                              ],
                            ),
                          ),
                        ),
                        Bannerads(),
                        Divider(
                          color: corCinzaBase3,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: tela.width * 0.05, vertical: 0.1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Enquetes e Petições',
                                style: TextStyle(color: corTextoNormal),
                              ),
                              TextButton(
                                  onPressed: () {}, child: Text('Ver mais...'))
                            ],
                          ),
                        ),
                        Container(
                            width: tela.width,
                            height: tela.height * 0.2,
                            child: SingleChildScrollView(
                              padding: EdgeInsets.only(left: 8),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  BannerEnquete(),
                                  BannerEnquete(),
                                  BannerEnquete(),
                                  BannerEnquete(),
                                  BannerEnquete(),
                                ],
                              ),
                            )),
                        Divider(
                          color: corCinzaBase2,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: tela.width * 0.05, vertical: 0.1),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Novidades',
                                style: TextStyle(color: corTextoNormal),
                              ),
                              TextButton(
                                  onPressed: () {}, child: Text('Ver mais...')),
                            ],
                          ),
                        ),
                        Container(
                            width: tela.width,
                            height: tela.height * 0.2,
                            child: SingleChildScrollView(
                              padding: EdgeInsets.only(left: 8),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  BannerNovidades(),
                                  BannerNovidades(),
                                  BannerNovidades(),
                                  BannerNovidades(),
                                  BannerNovidades(),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Positioned(
            bottom: 10,
            child: Menubar(
              home: true,
              todosRegistros: false,
              registro: false,
            ))
      ]),
    );
  }
}
