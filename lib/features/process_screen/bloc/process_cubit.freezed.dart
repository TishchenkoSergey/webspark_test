// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProcessState {
  ProcessStateStatus get status;
  List<CalculationDataModel>? get shortestPath;
  Object? get error;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProcessStateCopyWith<ProcessState> get copyWith =>
      _$ProcessStateCopyWithImpl<ProcessState>(
          this as ProcessState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProcessState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.shortestPath, shortestPath) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(shortestPath),
      const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'ProcessState(status: $status, shortestPath: $shortestPath, error: $error)';
  }
}

/// @nodoc
abstract mixin class $ProcessStateCopyWith<$Res> {
  factory $ProcessStateCopyWith(
          ProcessState value, $Res Function(ProcessState) _then) =
      _$ProcessStateCopyWithImpl;
  @useResult
  $Res call(
      {ProcessStateStatus status,
      List<CalculationDataModel>? shortestPath,
      Object? error});
}

/// @nodoc
class _$ProcessStateCopyWithImpl<$Res> implements $ProcessStateCopyWith<$Res> {
  _$ProcessStateCopyWithImpl(this._self, this._then);

  final ProcessState _self;
  final $Res Function(ProcessState) _then;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? shortestPath = freezed,
    Object? error = freezed,
  }) {
    return _then(_self.copyWith(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProcessStateStatus,
      shortestPath: freezed == shortestPath
          ? _self.shortestPath
          : shortestPath // ignore: cast_nullable_to_non_nullable
              as List<CalculationDataModel>?,
      error: freezed == error ? _self.error : error,
    ));
  }
}

/// @nodoc

class _ProcessState extends ProcessState {
  const _ProcessState(
      {this.status = ProcessStateStatus.initial,
      final List<CalculationDataModel>? shortestPath,
      this.error})
      : _shortestPath = shortestPath,
        super._();

  @override
  @JsonKey()
  final ProcessStateStatus status;
  final List<CalculationDataModel>? _shortestPath;
  @override
  List<CalculationDataModel>? get shortestPath {
    final value = _shortestPath;
    if (value == null) return null;
    if (_shortestPath is EqualUnmodifiableListView) return _shortestPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Object? error;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProcessStateCopyWith<_ProcessState> get copyWith =>
      __$ProcessStateCopyWithImpl<_ProcessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProcessState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._shortestPath, _shortestPath) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_shortestPath),
      const DeepCollectionEquality().hash(error));

  @override
  String toString() {
    return 'ProcessState(status: $status, shortestPath: $shortestPath, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$ProcessStateCopyWith<$Res>
    implements $ProcessStateCopyWith<$Res> {
  factory _$ProcessStateCopyWith(
          _ProcessState value, $Res Function(_ProcessState) _then) =
      __$ProcessStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {ProcessStateStatus status,
      List<CalculationDataModel>? shortestPath,
      Object? error});
}

/// @nodoc
class __$ProcessStateCopyWithImpl<$Res>
    implements _$ProcessStateCopyWith<$Res> {
  __$ProcessStateCopyWithImpl(this._self, this._then);

  final _ProcessState _self;
  final $Res Function(_ProcessState) _then;

  /// Create a copy of ProcessState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? status = null,
    Object? shortestPath = freezed,
    Object? error = freezed,
  }) {
    return _then(_ProcessState(
      status: null == status
          ? _self.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProcessStateStatus,
      shortestPath: freezed == shortestPath
          ? _self._shortestPath
          : shortestPath // ignore: cast_nullable_to_non_nullable
              as List<CalculationDataModel>?,
      error: freezed == error ? _self.error : error,
    ));
  }
}

// dart format on
