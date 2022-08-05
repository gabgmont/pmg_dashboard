class ResumedTenantsModel {
  final int id;
  final String name;
  final String cpf;
  final String phone;
  final int processesQuantity;

  ResumedTenantsModel(
      {required this.id,
      required this.name,
      required this.cpf,
      required this.phone,
      required this.processesQuantity});
}
