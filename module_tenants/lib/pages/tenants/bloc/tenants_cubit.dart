
import 'package:module_commons/export_commons.dart';
import 'package:module_tenants/clients/tenants_search_client.dart';
import 'package:module_tenants/models/resumed_tenants_model.dart';
import 'package:module_tenants/pages/tenants/bloc/tenants_state.dart';

class TenantsCubit extends Cubit<TenantsState> {
  TenantsCubit() : super(const TenantsState());
  final _tenantsClient = Modular.get<ITenantsSearchClient>();

  List<ResumedTenantsModel> tenants = [];
  String _filter = '';

  filter(String filter) {
    _filter = filter;
    emit(state.copyWith(updateScreen: !state.updateScreen));
  }

  init() async {
    emit(state.copyWith(isLoading: true, hasError: false, errorMessage: ''));
    tenants = await _tenantsClient.getTenants();
    emit(state.copyWith(isLoading: false));
  }

  List<ResumedTenantsModel> filterBy() {
    if (_filter.isEmpty) {
      return tenants;
    }

    return tenants
        .where((element) =>
            element.name.contains(_filter) ||
            element.cpf.contains(_filter) ||
            element.phone.contains(_filter))
        .toList();
  }
}
