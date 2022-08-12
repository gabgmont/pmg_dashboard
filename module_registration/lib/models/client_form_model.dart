// ignore_for_file: public_member_api_docs, sort_constructors_first
class ClientForm {
  //Dados Pessoais
  final String nome;
  final String cpf;
  final String data_nascimento;
  final String sexo;
  final String estado_civil;
  final String celular;
  final String email;
  // Cônjuge
  final String nomeC;
  final String cpfC;
  final String data_nascimentoC;
  // Residência atual
  final String cep;
  final String numero;
  final String complemento;
  //Renda
  final String vinculo;
  final String renda_mensal;
  final String outras_rendas;
  final String profissao;
  final String empresa;
  final String telefone_empresa;
  final String data_admissao;
  ClientForm({
    required this.nome,
    required this.cpf,
    required this.data_nascimento,
    required this.sexo,
    required this.estado_civil,
    required this.celular,
    required this.email,
    required this.nomeC,
    required this.cpfC,
    required this.data_nascimentoC,
    required this.cep,
    required this.numero,
    required this.complemento,
    required this.vinculo,
    required this.renda_mensal,
    required this.outras_rendas,
    required this.profissao,
    required this.empresa,
    required this.telefone_empresa,
    required this.data_admissao,
  });
}
