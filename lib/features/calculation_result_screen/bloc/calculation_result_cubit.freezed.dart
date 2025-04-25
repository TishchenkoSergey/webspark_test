// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculation_result_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CalculationResultState {
  CalculationDataModel? get shortestPath;
  CountingDataModel? get taskData;

  /// Create a copy of CalculationResultState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CalculationResultStateCopyWith<CalculationResultState> get copyWith =>
      _$CalculationResultStateCopyWithImpl<CalculationResultState>(
          this as CalculationResultState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CalculationResultState &&
            (identical(other.shortestPath, shortestPath) ||
                other.shortestPath == shortestPath) &&
            (identical(other.taskData, taskData) ||
                other.taskData == taskData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shortestPath, taskData);

  @override
  String toString() {
    return 'CalculationResultState(shortestPath: $shortestPath, taskData: $taskData)';
  }
}

/// @nodoc
abstract mixin class $CalculationResultStateCopyWith<$Res> {
  factory $CalculationResultStateCopyWith(CalculationResultState value,
          $Res Function(CalculationResultState) _then) =
      _$CalculationResultStateCopyWithImpl;
  @useResult
  $Res call({CalculationDataModel? shortestPath, CountingDataModel? taskData});
}

/// @nodoc
class _$CalculationResultStateCopyWithImpl<$Res>
    implements $CalculationResultStateCopyWith<$Res> {
  _$CalculationResultStateCopyWithImpl(this._self, this._then);

  final CalculationResultState _self;
  final $Res Function(CalculationResultState) _then;

  /// Create a copy of CalculationResultState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortestPath = freezed,
    Object? taskData = freezed,
  }) {
    return _then(_self.copyWith(
      shortestPath: freezed == shortestPath
          ? _self.shortestPath
          : shortestPath // ignore: cast_nullable_to_non_nullable
              as CalculationDataModel?,
      taskData: freezed == taskData
          ? _self.taskData
          : taskData // ignore: cast_nullable_to_non_nullable
              as CountingDataModel?,
    ));
  }
}

/// @nodoc

class _CalculationResultState extends CalculationResultState {
  const _CalculationResultState({this.shortestPath, this.taskData}) : super._();

  @override
  final CalculationDataModel? shortestPath;
  @override
  final CountingDataModel? taskData;

  /// Create a copy of CalculationResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CalculationResultStateCopyWith<_CalculationResultState> get copyWith =>
      __$CalculationResultStateCopyWithImpl<_CalculationResultState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CalculationResultState &&
            (identical(other.shortestPath, shortestPath) ||
                other.shortestPath == shortestPath) &&
            (identical(other.taskData, taskData) ||
                other.taskData == taskData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shortestPath, taskData);

  @override
  String toString() {
    return 'CalculationResultState(shortestPath: $shortestPath, taskData: $taskData)';
  }
}

/// @nodoc
abstract mixin class _$CalculationResultStateCopyWith<$Res>
    implements $CalculationResultStateCopyWith<$Res> {
  factory _$CalculationResultStateCopyWith(_CalculationResultState value,
          $Res Function(_CalculationResultState) _then) =
      __$CalculationResultStateCopyWithImpl;
  @override
  @useResult
  $Res call({CalculationDataModel? shortestPath, CountingDataModel? taskData});
}

/// @nodoc
class __$CalculationResultStateCopyWithImpl<$Res>
    implements _$CalculationResultStateCopyWith<$Res> {
  __$CalculationResultStateCopyWithImpl(this._self, this._then);

  final _CalculationResultState _self;
  final $Res Function(_CalculationResultState) _then;

  /// Create a copy of CalculationResultState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? shortestPath = freezed,
    Object? taskData = freezed,
  }) {
    return _then(_CalculationResultState(
      shortestPath: freezed == shortestPath
          ? _self.shortestPath
          : shortestPath // ignore: cast_nullable_to_non_nullable
              as CalculationDataModel?,
      taskData: freezed == taskData
          ? _self.taskData
          : taskData // ignore: cast_nullable_to_non_nullable
              as CountingDataModel?,
    ));
  }
}

// dart format on
