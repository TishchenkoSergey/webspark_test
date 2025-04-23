// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MainState {
  LinkInput get linkInput;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MainStateCopyWith<MainState> get copyWith =>
      _$MainStateCopyWithImpl<MainState>(this as MainState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MainState &&
            (identical(other.linkInput, linkInput) ||
                other.linkInput == linkInput));
  }

  @override
  int get hashCode => Object.hash(runtimeType, linkInput);

  @override
  String toString() {
    return 'MainState(linkInput: $linkInput)';
  }
}

/// @nodoc
abstract mixin class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) _then) =
      _$MainStateCopyWithImpl;
  @useResult
  $Res call({LinkInput linkInput});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res> implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._self, this._then);

  final MainState _self;
  final $Res Function(MainState) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? linkInput = null,
  }) {
    return _then(_self.copyWith(
      linkInput: null == linkInput
          ? _self.linkInput
          : linkInput // ignore: cast_nullable_to_non_nullable
              as LinkInput,
    ));
  }
}

/// @nodoc

class _MainState extends MainState {
  const _MainState({this.linkInput = const LinkInput.pure()}) : super._();

  @override
  @JsonKey()
  final LinkInput linkInput;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MainStateCopyWith<_MainState> get copyWith =>
      __$MainStateCopyWithImpl<_MainState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MainState &&
            (identical(other.linkInput, linkInput) ||
                other.linkInput == linkInput));
  }

  @override
  int get hashCode => Object.hash(runtimeType, linkInput);

  @override
  String toString() {
    return 'MainState(linkInput: $linkInput)';
  }
}

/// @nodoc
abstract mixin class _$MainStateCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$MainStateCopyWith(
          _MainState value, $Res Function(_MainState) _then) =
      __$MainStateCopyWithImpl;
  @override
  @useResult
  $Res call({LinkInput linkInput});
}

/// @nodoc
class __$MainStateCopyWithImpl<$Res> implements _$MainStateCopyWith<$Res> {
  __$MainStateCopyWithImpl(this._self, this._then);

  final _MainState _self;
  final $Res Function(_MainState) _then;

  /// Create a copy of MainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? linkInput = null,
  }) {
    return _then(_MainState(
      linkInput: null == linkInput
          ? _self.linkInput
          : linkInput // ignore: cast_nullable_to_non_nullable
              as LinkInput,
    ));
  }
}

// dart format on
