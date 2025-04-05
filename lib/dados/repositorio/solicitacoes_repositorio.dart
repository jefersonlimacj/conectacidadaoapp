import 'dart:convert';

import 'package:conecta_cidadao/dados/http/excecoes.dart';
import 'package:conecta_cidadao/dados/http/http_client.dart';
import 'package:conecta_cidadao/dados/models/solicitacoes.dart';

abstract class SolicitacaoRep {
  Future<List<Solicitacao>> getSolicitacoes();
}

class SolicitacoesRepositorio implements SolicitacaoRep {
  final IHttpClient client;

  SolicitacoesRepositorio({required this.client});

  @override
  Future<List<Solicitacao>> getSolicitacoes() async {
    final respostaApi =
        await client.get(url: "http://localhost:5172/cadastro/usuarios");

    if (respostaApi.statusCode == 200) {
      final List<Solicitacao> listaSolicitacoes = [];
      final data = jsonDecode(respostaApi.body);

      data.forEach((item) {
        final Solicitacao solicitacao = Solicitacao.fromMap(item);
        listaSolicitacoes.add(solicitacao);
      });

      print('Resposta da API: ${data}');

      listaSolicitacoes.forEach((solicitacao) {
        print(solicitacao);
      });

      return listaSolicitacoes;
    } else if (respostaApi.statusCode == 404) {
      throw NotFoundException('URL Inválida');
    } else {
      throw Exception('Não foi possível carregar: ${respostaApi.statusCode}');
    }
  }
}
