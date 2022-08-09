import 'package:intl/intl.dart';
import 'package:module_commons/models/enum/process_status.dart';

class Process {
  final int number;
  final ProcessStatus status;
  final String principalTenantName;
  final String insuranceCompany;
  final String startDate;
  final String expirationDate;
  final String street;
  final String? complement;
  final String district;
  final String city;
  final String uf;
  final List<String> tenants;

  Process({
    required this.number,
    required this.status,
    required this.principalTenantName,
    required this.insuranceCompany,
    required this.startDate,
    required this.expirationDate,
    required this.street,
    this.complement, 
    required this.district,
    required this.city,
    required this.uf,
    required this.tenants,
  });

  DateTime get startDateTime {
    var dateFormat = DateFormat('dd/MM/yyyy HH:mm:ss');
    return dateFormat.parse(startDate);
  }

  DateTime get expirationDateTime {
    var dateFormat = DateFormat('dd/MM/yyyy HH:mm:ss');
    return dateFormat.parse(expirationDate);
  }
}
