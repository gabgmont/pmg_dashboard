import 'package:module_assurance/client/process_client.dart';
import 'package:module_commons/export_commons.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_commons/models/enum/process_status.dart';

import 'assurance_state.dart';

class AssuranceCubit extends Cubit<AssuranceState> {
  AssuranceCubit() : super(const AssuranceState());

  final _processClient = Modular.get<IProcessClient>();

  List<ResumedProcessStatus> statusFilters = [];
  String _searchFilter = '';
  DateTime _startDateFilter = DateTime.now().subtract(const Duration(days: 7));
  DateTime _endDateFilter = DateTime.now();

  List<Process> processes = [];

  setSearchFilter(String text) {
    _searchFilter = text;
    emit(state.copyWith(updateScreen: !state.updateScreen));
  }

  setStartDateFilter(String text) {
    var dateFormat = DateFormat('dd/MM/yyyy HH:mm:ss');
    _startDateFilter = dateFormat.parse(text);
  }

  setEndDateFilter(String text) {
    var dateFormat = DateFormat('dd/MM/yyyy HH:mm:ss');
    _endDateFilter = dateFormat.parse(text);
  }

  updateStatusFilter(ResumedProcessStatus status) {
    if (statusFilters.contains(status)) {
      statusFilters.remove(status);
    } else {
      statusFilters.add(status);
    }
    emit(state.copyWith(updateScreen: !state.updateScreen));
  }

  init() async {
    emit(state.copyWith(isLoading: true));
    processes = await _processClient.getProcesses(
        _startDateFilter.toString(), _endDateFilter.toString());

    emit(state.copyWith(isLoading: false));
  }

  filterProcesses() {
    if (statusFilters.isEmpty && _searchFilter.isEmpty) {
      return processes;
    }

    if (statusFilters.isEmpty) {
      return processes
          .where((process) =>
              process.number.toString().contains(_searchFilter) ||
              process.principalTenantName.contains(_searchFilter) ||
              process.insuranceCompany.contains(_searchFilter) ||
              process.city.contains(_searchFilter) ||
              process.district.contains(_searchFilter) ||
              process.city.contains(_searchFilter) ||
              process.uf.contains(_searchFilter))
          .toList();
    }

    if (_searchFilter.isEmpty) {
      return processes
          .where(
              (process) => statusFilters.contains(process.status.resumedStatus))
          .toList();
    }

    return processes
        .where((process) =>
            statusFilters.contains(process.status.resumedStatus) &&
            (process.number.toString().contains(_searchFilter) ||
                process.principalTenantName.contains(_searchFilter) ||
                process.insuranceCompany.contains(_searchFilter) ||
                process.city.contains(_searchFilter) ||
                process.district.contains(_searchFilter) ||
                process.city.contains(_searchFilter) ||
                process.uf.contains(_searchFilter)))
        .toList();
  }
}
