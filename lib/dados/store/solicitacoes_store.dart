import 'package:conecta_cidadao/dados/http/excecoes.dart';
import 'package:conecta_cidadao/dados/models/solicitacoes.dart';
import 'package:conecta_cidadao/dados/repositorio/solicitacoes_repositorio.dart';
import 'package:flutter/material.dart';

class SolicitacoesStore {
  final SolicitacoesRepositorio repositorio;

  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(false);

  final ValueNotifier<List<Solicitacao>> state =
      ValueNotifier<List<Solicitacao>>([]);

  final ValueNotifier<String> erro = ValueNotifier<String>('');

  SolicitacoesStore({required this.repositorio});

  Future getSolicitacoes() async {
    isLoading.value = true;
    try {
      final resultado = await repositorio.getSolicitacoes();
      state.value = resultado;
    } on NotFoundException catch (e) {
      erro.value = e.message;
    } catch (e) {
      erro.value = e.toString();
    }

    isLoading.value = false;
  }
}
