import 'dart:math';
import 'package:conecta_cidadao/dados/http/http_client.dart';
import 'package:conecta_cidadao/dados/repositorio/solicitacoes_repositorio.dart';
import 'package:conecta_cidadao/dados/store/solicitacoes_store.dart';
import 'package:intl/intl.dart';
import 'package:conecta_cidadao/componentes/cardSoliciatacaoRes.dart';
import 'package:conecta_cidadao/props/cores.dart';
import 'package:flutter/material.dart';

class Resumoregistros extends StatefulWidget {
  const Resumoregistros({super.key});

  @override
  State<Resumoregistros> createState() => _ResumoregistrosState();
}

class _ResumoregistrosState extends State<Resumoregistros> {
  final SolicitacoesStore dadosBaixados = SolicitacoesStore(
    repositorio: SolicitacoesRepositorio(
      client: HttpClient(),
    ),
  );

  void initState() {
    super.initState();
    dadosBaixados.getSolicitacoes();
  }

  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size;
    var random = Random();
    int numeroAleatorio = random.nextInt(99999999);
    String dataFormat = DateFormat('dd/MM/yyyy').format(DateTime.now());
    String horaFormat = DateFormat('HH:mm').format(DateTime.now());
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
                      'Minhas Solicitações',
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
          child: Container(
            width: tela.width,
            height: tela.height,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: tela.width * 0.05),
                    padding: EdgeInsets.all(10),
                    width: tela.width,
                    height: tela.height * 0.075,
                    decoration: BoxDecoration(
                        color: corCinzaBase4,
                        borderRadius: BorderRadius.circular(18)),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.search_rounded,
                            color: corPrincipal,
                          ),
                          hintStyle: TextStyle(color: corCinzaBase2),
                          hintText: 'Pesquisa',
                          border: InputBorder.none),
                    )),
                SizedBox(
                  width: tela.width,
                  height: tela.height * 0.825,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          width: tela.width,
                          height: tela.height * 0.5,
                          decoration: BoxDecoration(color: corCat3),
                          child: AnimatedBuilder(
                              animation: Listenable.merge([
                                dadosBaixados.isLoading,
                                dadosBaixados.state,
                                dadosBaixados.erro
                              ]),
                              builder: (context, child) {
                                if (dadosBaixados.isLoading.value == true) {
                                  return CircularProgressIndicator();
                                } else if (dadosBaixados
                                    .erro.value.isNotEmpty) {
                                  return Center(
                                    child: Text(
                                      dadosBaixados.erro.value,
                                      textAlign: TextAlign.center,
                                    ),
                                  );
                                } else if (dadosBaixados.state.value.isEmpty) {
                                  return const Center(
                                    child: Text(
                                      'Lista Vazia',
                                      textAlign: TextAlign.center,
                                    ),
                                  );
                                } else {
                                  return ListView.builder(
                                      padding: EdgeInsets.all(16),
                                      itemCount:
                                          dadosBaixados.state.value.length,
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          title: Text(
                                              'solicitacao.titulo ${dadosBaixados.state.value.length}'),
                                          subtitle:
                                              Text('solicitacao.descricao'),
                                          trailing: Text('solicitacao.status'),
                                        );
                                      });
                                }
                              }),
                        ),
                        Cardsoliciatacaores(
                          categoria: 'Comércio Irregular',
                          subCategoria: 'Comércio sem Nota Fiscal',
                          status: 'PN',
                          data: '$dataFormat às ${horaFormat}h',
                          protocolo: numeroAleatorio * 2,
                        ),
                        Cardsoliciatacaores(
                          categoria: 'Limpeza/Manutenção',
                          subCategoria: 'Interrupção no Fornecimento',
                          status: 'PE',
                          data: '$dataFormat às ${horaFormat}h',
                          protocolo: numeroAleatorio * 3,
                        ),
                        Cardsoliciatacaores(
                          categoria: 'Meio Ambiente',
                          subCategoria: 'Poda de Árvores',
                          status: 'AR',
                          data: '$dataFormat às ${horaFormat}h',
                          protocolo: numeroAleatorio * 4,
                        ),
                        Cardsoliciatacaores(
                          categoria: 'Pedestres/Ciclistas',
                          subCategoria: 'Falta de Calçada',
                          status: 'AA',
                          data: '$dataFormat às ${horaFormat}h',
                          protocolo: numeroAleatorio * 5,
                        ),
                        Cardsoliciatacaores(
                          categoria: 'Vias/Trânsito',
                          subCategoria: 'Bloqueio na Via',
                          status: 'SA',
                          data: '$dataFormat às ${horaFormat}h',
                          protocolo: (numeroAleatorio * 6) + 100,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
