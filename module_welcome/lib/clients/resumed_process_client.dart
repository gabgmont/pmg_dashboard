import 'package:module_commons/models/entity/process.dart';
import 'package:module_commons/models/enum/process_status.dart';

class IResumedProcessClient {
  Future<List<Process>> getProcesses() {
    return Future.delayed(const Duration(seconds: 1)).then((value) => [
          Process(
            number: 99944827,
            status: ProcessStatus.validatingForm,
            tenantName: 'Jose da Silva',
            insuranceCompany: 'Porto Seguro',
            startDate: '01/01/2022',
            expirationDate: '01/01/2023',
          ),
          Process(
            number: 99944827,
            status: ProcessStatus.approved,
            tenantName: 'Jose da Silva',
            insuranceCompany: 'Porto Seguro',
            startDate: '01/01/2022',
            expirationDate: '01/01/2023',
          ),
          Process(
            number: 99944827,
            status: ProcessStatus.emittingProposal,
            tenantName: 'Jose da Silva',
            insuranceCompany: 'Porto Seguro',
            startDate: '01/01/2022',
            expirationDate: '01/01/2023',
          ),
          Process(
            number: 99944827,
            status: ProcessStatus.sendToInsuranceCompany,
            tenantName: 'Jose da Silva',
            insuranceCompany: 'Porto Seguro',
            startDate: '01/01/2022',
            expirationDate: '01/01/2023',
          ),
          Process(
            number: 99944827,
            status: ProcessStatus.signedDocuments,
            tenantName: 'Jose da Silva',
            insuranceCompany: 'Porto Seguro',
            startDate: '01/01/2022',
            expirationDate: '01/01/2023',
          ),
          Process(
            number: 99944827,
            status: ProcessStatus.emittingPolicy,
            tenantName: 'Jose da Silva',
            insuranceCompany: 'Porto Seguro',
            startDate: '01/01/2022',
            expirationDate: '01/01/2023',
          ),
          Process(
            number: 99944827,
            status: ProcessStatus.emittingProposal,
            tenantName: 'Jose da Silva',
            insuranceCompany: 'Porto Seguro',
            startDate: '01/01/2022',
            expirationDate: '01/01/2023',
          ),
        ]);
  }
}
