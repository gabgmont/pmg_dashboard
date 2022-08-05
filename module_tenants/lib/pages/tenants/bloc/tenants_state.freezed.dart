// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tenants_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TenantsStateTearOff {
  const _$TenantsStateTearOff();

  _TenantsState call(
      {bool isLoading = false,
      bool hasError = false,
      String errorMessage = '',
      dynamic updateScreen = false}) {
    return _TenantsState(
      isLoading: isLoading,
      hasError: hasError,
      errorMessage: errorMessage,
      updateScreen: updateScreen,
    );
  }
}

/// @nodoc
const $TenantsState = _$TenantsStateTearOff();

/// @nodoc
mixin _$TenantsState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasError => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  dynamic get updateScreen => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TenantsStateCopyWith<TenantsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TenantsStateCopyWith<$Res> {
  factory $TenantsStateCopyWith(
          TenantsState value, $Res Function(TenantsState) then) =
      _$TenantsStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool hasError,
      String errorMessage,
      dynamic updateScreen});
}

/// @nodoc
class _$TenantsStateCopyWithImpl<$Res> implements $TenantsStateCopyWith<$Res> {
  _$TenantsStateCopyWithImpl(this._value, this._then);

  final TenantsState _value;
  // ignore: unused_field
  final $Res Function(TenantsState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
    Object? updateScreen = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      updateScreen: updateScreen == freezed
          ? _value.updateScreen
          : updateScreen // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$TenantsStateCopyWith<$Res>
    implements $TenantsStateCopyWith<$Res> {
  factory _$TenantsStateCopyWith(
          _TenantsState value, $Res Function(_TenantsState) then) =
      __$TenantsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool hasError,
      String errorMessage,
      dynamic updateScreen});
}

/// @nodoc
class __$TenantsStateCopyWithImpl<$Res> extends _$TenantsStateCopyWithImpl<$Res>
    implements _$TenantsStateCopyWith<$Res> {
  __$TenantsStateCopyWithImpl(
      _TenantsState _value, $Res Function(_TenantsState) _then)
      : super(_value, (v) => _then(v as _TenantsState));

  @override
  _TenantsState get _value => super._value as _TenantsState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? hasError = freezed,
    Object? errorMessage = freezed,
    Object? updateScreen = freezed,
  }) {
    return _then(_TenantsState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasError: hasError == freezed
          ? _value.hasError
          : hasError // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      updateScreen:
          updateScreen == freezed ? _value.updateScreen : updateScreen,
    ));
  }
}

/// @nodoc

class _$_TenantsState implements _TenantsState {
  const _$_TenantsState(
      {this.isLoading = false,
      this.hasError = false,
      this.errorMessage = '',
      this.updateScreen = false});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final bool hasError;
  @JsonKey()
  @override
  final String errorMessage;
  @JsonKey()
  @override
  final dynamic updateScreen;

  @override
  String toString() {
    return 'TenantsState(isLoading: $isLoading, hasError: $hasError, errorMessage: $errorMessage, updateScreen: $updateScreen)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TenantsState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.hasError, hasError) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality()
                .equals(other.updateScreen, updateScreen));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(hasError),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(updateScreen));

  @JsonKey(ignore: true)
  @override
  _$TenantsStateCopyWith<_TenantsState> get copyWith =>
      __$TenantsStateCopyWithImpl<_TenantsState>(this, _$identity);
}

abstract class _TenantsState implements TenantsState {
  const factory _TenantsState(
      {bool isLoading,
      bool hasError,
      String errorMessage,
      dynamic updateScreen}) = _$_TenantsState;

  @override
  bool get isLoading;
  @override
  bool get hasError;
  @override
  String get errorMessage;
  @override
  dynamic get updateScreen;
  @override
  @JsonKey(ignore: true)
  _$TenantsStateCopyWith<_TenantsState> get copyWith =>
      throw _privateConstructorUsedError;
}
