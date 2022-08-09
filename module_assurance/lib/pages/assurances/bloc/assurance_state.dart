import 'package:module_commons/export_bloc.dart';

part 'assurance_state.freezed.dart';

@freezed
class AssuranceState with _$AssuranceState {
  const factory AssuranceState(
      {@Default(false) bool isLoading,
      @Default(false) bool hasError,
      @Default('') String errorMessage,
      @Default(false) updateScreen}) = _AssuranceState;
}
