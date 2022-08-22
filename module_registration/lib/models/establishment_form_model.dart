// ignore_for_file: public_member_api_docs, sort_constructors_first
class EstablishmentForm {
  //Estabelecimento
  final String empresa_constituida;
  final String cnpj;
  final String atividade_economica;
  final String cnae;
  final String franquia;
  final String experiencia;
  final String produtos;
  final String produto;
  // socios
  final String nome;
  final String cpf;
  // sobre
  final String onus;
  final String investimento;
  EstablishmentForm({
    required this.empresa_constituida,
    required this.cnpj,
    required this.atividade_economica,
    required this.cnae,
    required this.franquia,
    required this.experiencia,
    required this.produtos,
    required this.produto,
    required this.nome,
    required this.cpf,
    required this.onus,
    required this.investimento,
  });
}
