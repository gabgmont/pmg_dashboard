import 'package:module_commons/export_bloc.dart';

part 'registration_state.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(false) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String erroMessage,
  }) = _RegistrationState;
}
