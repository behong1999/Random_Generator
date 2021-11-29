// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'randomizer_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RandomizerStateTearOff {
  const _$RandomizerStateTearOff();

  _RandomizerState call({int min = 0, int max = 0, int? genereatedNumber}) {
    return _RandomizerState(
      min: min,
      max: max,
      genereatedNumber: genereatedNumber,
    );
  }
}

/// @nodoc
const $RandomizerState = _$RandomizerStateTearOff();

/// @nodoc
mixin _$RandomizerState {
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  int? get genereatedNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomizerStateCopyWith<RandomizerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomizerStateCopyWith<$Res> {
  factory $RandomizerStateCopyWith(
          RandomizerState value, $Res Function(RandomizerState) then) =
      _$RandomizerStateCopyWithImpl<$Res>;
  $Res call({int min, int max, int? genereatedNumber});
}

/// @nodoc
class _$RandomizerStateCopyWithImpl<$Res>
    implements $RandomizerStateCopyWith<$Res> {
  _$RandomizerStateCopyWithImpl(this._value, this._then);

  final RandomizerState _value;
  // ignore: unused_field
  final $Res Function(RandomizerState) _then;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? genereatedNumber = freezed,
  }) {
    return _then(_value.copyWith(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      genereatedNumber: genereatedNumber == freezed
          ? _value.genereatedNumber
          : genereatedNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$RandomizerStateCopyWith<$Res>
    implements $RandomizerStateCopyWith<$Res> {
  factory _$RandomizerStateCopyWith(
          _RandomizerState value, $Res Function(_RandomizerState) then) =
      __$RandomizerStateCopyWithImpl<$Res>;
  @override
  $Res call({int min, int max, int? genereatedNumber});
}

/// @nodoc
class __$RandomizerStateCopyWithImpl<$Res>
    extends _$RandomizerStateCopyWithImpl<$Res>
    implements _$RandomizerStateCopyWith<$Res> {
  __$RandomizerStateCopyWithImpl(
      _RandomizerState _value, $Res Function(_RandomizerState) _then)
      : super(_value, (v) => _then(v as _RandomizerState));

  @override
  _RandomizerState get _value => super._value as _RandomizerState;

  @override
  $Res call({
    Object? min = freezed,
    Object? max = freezed,
    Object? genereatedNumber = freezed,
  }) {
    return _then(_RandomizerState(
      min: min == freezed
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: max == freezed
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      genereatedNumber: genereatedNumber == freezed
          ? _value.genereatedNumber
          : genereatedNumber // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_RandomizerState implements _RandomizerState {
  const _$_RandomizerState({this.min = 0, this.max = 0, this.genereatedNumber});

  @JsonKey(defaultValue: 0)
  @override
  final int min;
  @JsonKey(defaultValue: 0)
  @override
  final int max;
  @override
  final int? genereatedNumber;

  @override
  String toString() {
    return 'RandomizerState(min: $min, max: $max, genereatedNumber: $genereatedNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RandomizerState &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.genereatedNumber, genereatedNumber) ||
                other.genereatedNumber == genereatedNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, min, max, genereatedNumber);

  @JsonKey(ignore: true)
  @override
  _$RandomizerStateCopyWith<_RandomizerState> get copyWith =>
      __$RandomizerStateCopyWithImpl<_RandomizerState>(this, _$identity);
}

abstract class _RandomizerState implements RandomizerState {
  const factory _RandomizerState({int min, int max, int? genereatedNumber}) =
      _$_RandomizerState;

  @override
  int get min;
  @override
  int get max;
  @override
  int? get genereatedNumber;
  @override
  @JsonKey(ignore: true)
  _$RandomizerStateCopyWith<_RandomizerState> get copyWith =>
      throw _privateConstructorUsedError;
}