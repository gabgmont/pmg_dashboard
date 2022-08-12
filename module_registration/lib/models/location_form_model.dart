class Locationform {
  // Dados do imóvel
  final String tipo_imovel;
  final String cep;
  final String bairro;
  final String rua;
  final String numero;
  final String complemento;
  final String cidade;
  final String estado;
  //Dados da imobiliária
  final String tipo_locacao;
  final String imobiliaria;
  final String atendente;
  //Gastos do imóvel
  final String valor_aluguel;
  final String valor_condominio;
  final String valor_iptu;
  //Sobre a locação
  final String motivo;
  final String tipo_prentedente;

  Locationform({
    required this.tipo_imovel,
    required this.cep,
    required this.bairro,
    required this.rua,
    required this.numero,
    required this.complemento,
    required this.cidade,
    required this.estado,
    required this.tipo_locacao,
    required this.imobiliaria,
    required this.atendente,
    required this.valor_aluguel,
    required this.valor_condominio,
    required this.valor_iptu,
    required this.motivo,
    required this.tipo_prentedente,
  });
}
