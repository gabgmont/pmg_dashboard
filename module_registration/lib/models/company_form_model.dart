// ignore_for_file: public_member_api_docs, sort_constructors_first
class CompanyForm {
  //Empresa
  final String razao_social;
  final String data_criacao;
  final String telefone;
  final String email;
  final String tipo_empresa;
  // Capital
  final String capital_social;
  final String faturamento_mensal;
  final String patrimonio_liquido;
  final String ativadade_economica;
  CompanyForm({
    required this.razao_social,
    required this.data_criacao,
    required this.telefone,
    required this.email,
    required this.tipo_empresa,
    required this.capital_social,
    required this.faturamento_mensal,
    required this.patrimonio_liquido,
    required this.ativadade_economica,
  });
}
