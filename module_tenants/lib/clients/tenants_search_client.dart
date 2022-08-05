import 'package:module_tenants/models/resumed_tenants_model.dart';

class ITenantsSearchClient {
  Future<List<ResumedTenantsModel>> getTenants() =>
      Future.delayed(Duration(seconds: 1)).then((_) => [
            ResumedTenantsModel(
                id: 1,
                name: 'Jose da silva',
                cpf: '999.999.999-99',
                phone: '16 9999-9899',
                processesQuantity: 3),
            ResumedTenantsModel(
                id: 2,
                name: 'Carlinhos da silva',
                cpf: '999.152.999-99',
                phone: '16 9999-9899',
                processesQuantity: 3),
            ResumedTenantsModel(
                id: 3,
                name: 'Alfredo da silva',
                cpf: '999.999.333-99',
                phone: '16 9999-9899',
                processesQuantity: 2),
            ResumedTenantsModel(
                id: 4,
                name: 'Jose da silva',
                cpf: '999.111.999-99',
                phone: '16 9999-9899',
                processesQuantity: 1),
          ]);
}
