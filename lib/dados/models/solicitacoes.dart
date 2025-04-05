class Solicitacao {
  final int id;
  final String protocolo;
  final int usuarioId;
  final int categoriaId;
  final int subCategoriaId;
  final String status;
  final String data_solicitacao;
  final String endereco;
  final String latitude;
  final String longitude;
  final String comentario;

  Solicitacao(
      {required this.id,
      required this.protocolo,
      required this.usuarioId,
      required this.categoriaId,
      required this.subCategoriaId,
      required this.status,
      required this.data_solicitacao,
      required this.endereco,
      required this.latitude,
      required this.longitude,
      required this.comentario});

  factory Solicitacao.fromMap(Map<String, dynamic> map) {
    return Solicitacao(
        id: map['id'] ?? 0,
        protocolo: map['protocolo'] ?? 'Sem Protocolo',
        usuarioId: map['usuarioId'] ?? 1,
        categoriaId: map['categoriaId'] ?? 10,
        subCategoriaId: map['subCategoriaId'] ?? 1,
        status: map['status'] ?? 'Sem Status',
        data_solicitacao: map['data_solicitacao'].toString(),
        endereco: map['endereco'] ?? 'Sem Endereço',
        latitude: map['latitude'] ?? 0,
        longitude: map['longitude'] ?? 0,
        comentario: map['comentario'] ?? 'Sem comentários');
  }
}
