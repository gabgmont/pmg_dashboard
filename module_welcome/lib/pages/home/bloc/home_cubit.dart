import 'package:module_commons/export_commons.dart';
import 'package:module_commons/models/entity/process.dart';
import 'package:module_commons/models/entity/session.dart';
import 'package:module_commons/models/entity/user.dart';
import 'package:module_commons/models/enum/process_status.dart';
import 'package:module_welcome/clients/resumed_process_client.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  final _pmgSession = Modular.get<PmgSession>();
  final _resumedProcessClient = Modular.get<IResumedProcessClient>();
  List<Process> processes = [];

  init() async {
    emit(state.copyWith(isLoading: true, hasError: false, errorMessage: ''));
    processes = await _resumedProcessClient.getProcesses();
    emit(state.copyWith(isLoading: false));
  }

  List<ProcessStatus> exhibitionStatus() =>
      _pmgSession.user?.exhibitionStatus ?? [ProcessStatus.unknown];

  List<Process> filterProcessesByStatus(ProcessStatus status) =>
      processes.where((element) => element.status == status).toList();
}
