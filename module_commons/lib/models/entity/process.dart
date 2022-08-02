import 'package:intl/intl.dart';
import 'package:module_commons/models/enum/process_status.dart';

class Process {
  final int number;
  final ProcessStatus status;
  final String tenantName;
  final String insuranceCompany;
  final String startDate;
  final String expirationDate;

  Process({
    required this.number,
    required this.status,
    required this.tenantName,
    required this.insuranceCompany,
    required this.startDate,
    required this.expirationDate,
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
