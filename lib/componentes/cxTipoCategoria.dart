import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class CxTipoCategoria extends StatefulWidget {
  final String categoria;
  const CxTipoCategoria({
    super.key,
    required this.categoria,
  });

  @override
  State<CxTipoCategoria> createState() => _CxTipoCategoriaState();
}

class _CxTipoCategoriaState extends State<CxTipoCategoria> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    return Stack(alignment: Alignment.center, children: [
      Opacity(
        opacity: 0.15,
        child: Container(
          width: tela.height * 0.075,
          height: tela.height * 0.075,
          decoration: BoxDecoration(
              color: widget.categoria == 'Abastecimento/Saneamento'
                  ? corCat1
                  : widget.categoria == 'Comércio Irregular'
                      ? corCat2
                      : widget.categoria == 'Iluminação/Energia'
                          ? corCat3
                          : widget.categoria == 'Limpeza/Manutenção'
                              ? corCat4
                              : widget.categoria == 'Meio Ambiente'
                                  ? corCat5
                                  : widget.categoria == 'Pedestres/Ciclistas'
                                      ? corCat6
                                      : widget.categoria == 'Saúde'
                                          ? corCat7
                                          : widget.categoria == 'Segurança'
                                              ? corCat8
                                              : widget.categoria ==
                                                      'Transporte Público'
                                                  ? corCat9
                                                  : widget.categoria ==
                                                          'Urbanismo'
                                                      ? corCat10
                                                      : widget.categoria ==
                                                              'Vias/Trânsito'
                                                          ? corCat11
                                                          : null,
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
      Center(
        child: widget.categoria == 'Abastecimento/Saneamento'
            ? Icon(
                Icons.water_drop_rounded,
                color: corCat1,
              )
            : widget.categoria == 'Comércio Irregular'
                ? Icon(
                    Icons.storefront_rounded,
                    color: corCat2,
                  )
                : widget.categoria == 'Iluminação/Energia'
                    ? Icon(
                        Icons.wb_incandescent_rounded,
                        color: corCat3,
                      )
                    : widget.categoria == 'Limpeza/Manutenção'
                        ? Icon(
                            Icons.cleaning_services_rounded,
                            color: corCat4,
                          )
                        : widget.categoria == 'Meio Ambiente'
                            ? Icon(
                                Icons.compost_rounded,
                                color: corCat5,
                              )
                            : widget.categoria == 'Pedestres/Ciclistas'
                                ? Icon(
                                    Icons.directions_bike_rounded,
                                    color: corCat6,
                                  )
                                : widget.categoria == 'Saúde'
                                    ? Icon(
                                        Icons.volunteer_activism_rounded,
                                        color: corCat7,
                                      )
                                    : widget.categoria == 'Segurança'
                                        ? Icon(
                                            Icons.health_and_safety_rounded,
                                            color: corCat8,
                                          )
                                        : widget.categoria ==
                                                'Transporte Público'
                                            ? Icon(
                                                Icons
                                                    .transfer_within_a_station_rounded,
                                                color: corCat9,
                                              )
                                            : widget.categoria == 'Urbanismo'
                                                ? Icon(
                                                    Icons.location_city_rounded,
                                                    color: corCat10,
                                                  )
                                                : widget.categoria ==
                                                        'Vias/Trânsito'
                                                    ? Icon(
                                                        Icons.traffic_rounded,
                                                        color: corCat11,
                                                      )
                                                    : null,
      ),
    ]);
  }
}
