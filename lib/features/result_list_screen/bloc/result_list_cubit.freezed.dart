// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResultListState {
  List<CalculationDataModel>? get shortestPath;

  /// Create a copy of ResultListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResultListStateCopyWith<ResultListState> get copyWith =>
      _$ResultListStateCopyWithImpl<ResultListState>(
          this as ResultListState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResultListState &&
            const DeepCollectionEquality()
                .equals(other.shortestPath, shortestPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(shortestPath));

  @override
  String toString() {
    return 'ResultListState(shortestPath: $shortestPath)';
  }
}

/// @nodoc
abstract mixin class $ResultListStateCopyWith<$Res> {
  factory $ResultListStateCopyWith(
          ResultListState value, $Res Function(ResultListState) _then) =
      _$ResultListStateCopyWithImpl;
  @useResult
  $Res call({List<CalculationDataModel>? shortestPath});
}

/// @nodoc
class _$ResultListStateCopyWithImpl<$Res>
    implements $ResultListStateCopyWith<$Res> {
  _$ResultListStateCopyWithImpl(this._self, this._then);

  final ResultListState _self;
  final $Res Function(ResultListState) _then;

  /// Create a copy of ResultListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shortestPath = freezed,
  }) {
    return _then(_self.copyWith(
      shortestPath: freezed == shortestPath
          ? _self.shortestPath
          : shortestPath // ignore: cast_nullable_to_non_nullable
              as List<CalculationDataModel>?,
    ));
  }
}

/// @nodoc

class _ResultListState extends ResultListState {
  const _ResultListState({final List<CalculationDataModel>? shortestPath})
      : _shortestPath = shortestPath,
        super._();

  final List<CalculationDataModel>? _shortestPath;
  @override
  List<CalculationDataModel>? get shortestPath {
    final value = _shortestPath;
    if (value == null) return null;
    if (_shortestPath is EqualUnmodifiableListView) return _shortestPath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ResultListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResultListStateCopyWith<_ResultListState> get copyWith =>
      __$ResultListStateCopyWithImpl<_ResultListState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResultListState &&
            const DeepCollectionEquality()
                .equals(other._shortestPath, _shortestPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_shortestPath));

  @override
  String toString() {
    return 'ResultListState(shortestPath: $shortestPath)';
  }
}

/// @nodoc
abstract mixin class _$ResultListStateCopyWith<$Res>
    implements $ResultListStateCopyWith<$Res> {
  factory _$ResultListStateCopyWith(
          _ResultListState value, $Res Function(_ResultListState) _then) =
      __$ResultListStateCopyWithImpl;
  @override
  @useResult
  $Res call({List<CalculationDataModel>? shortestPath});
}

/// @nodoc
class __$ResultListStateCopyWithImpl<$Res>
    implements _$ResultListStateCopyWith<$Res> {
  __$ResultListStateCopyWithImpl(this._self, this._then);

  final _ResultListState _self;
  final $Res Function(_ResultListState) _then;

  /// Create a copy of ResultListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? shortestPath = freezed,
  }) {
    return _then(_ResultListState(
      shortestPath: freezed == shortestPath
          ? _self._shortestPath
          : shortestPath // ignore: cast_nullable_to_non_nullable
              as List<CalculationDataModel>?,
    ));
  }
}

// dart format on
