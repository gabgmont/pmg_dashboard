import 'package:module_commons/export_bloc.dart';

part 'tenants_state.freezed.dart';

@freezed
class TenantsState with _$TenantsState {
  const factory TenantsState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String errorMessage,
    @Default(false) updateScreen
  }) = _TenantsState;
}
