// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopUpOption _$TopUpOptionFromJson(Map<String, dynamic> json) {
  return _TopUpOption.fromJson(json);
}

/// @nodoc
mixin _$TopUpOption {
  double get amount => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  /// Serializes this TopUpOption to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopUpOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopUpOptionCopyWith<TopUpOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpOptionCopyWith<$Res> {
  factory $TopUpOptionCopyWith(
          TopUpOption value, $Res Function(TopUpOption) then) =
      _$TopUpOptionCopyWithImpl<$Res, TopUpOption>;
  @useResult
  $Res call({double amount, bool isSelected});
}

/// @nodoc
class _$TopUpOptionCopyWithImpl<$Res, $Val extends TopUpOption>
    implements $TopUpOptionCopyWith<$Res> {
  _$TopUpOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopUpOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopUpOptionImplCopyWith<$Res>
    implements $TopUpOptionCopyWith<$Res> {
  factory _$$TopUpOptionImplCopyWith(
          _$TopUpOptionImpl value, $Res Function(_$TopUpOptionImpl) then) =
      __$$TopUpOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double amount, bool isSelected});
}

/// @nodoc
class __$$TopUpOptionImplCopyWithImpl<$Res>
    extends _$TopUpOptionCopyWithImpl<$Res, _$TopUpOptionImpl>
    implements _$$TopUpOptionImplCopyWith<$Res> {
  __$$TopUpOptionImplCopyWithImpl(
      _$TopUpOptionImpl _value, $Res Function(_$TopUpOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopUpOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? isSelected = null,
  }) {
    return _then(_$TopUpOptionImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopUpOptionImpl implements _TopUpOption {
  const _$TopUpOptionImpl({required this.amount, this.isSelected = false});

  factory _$TopUpOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopUpOptionImplFromJson(json);

  @override
  final double amount;
  @override
  @JsonKey()
  final bool isSelected;

  @override
  String toString() {
    return 'TopUpOption(amount: $amount, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUpOptionImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, isSelected);

  /// Create a copy of TopUpOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpOptionImplCopyWith<_$TopUpOptionImpl> get copyWith =>
      __$$TopUpOptionImplCopyWithImpl<_$TopUpOptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopUpOptionImplToJson(
      this,
    );
  }
}

abstract class _TopUpOption implements TopUpOption {
  const factory _TopUpOption(
      {required final double amount,
      final bool isSelected}) = _$TopUpOptionImpl;

  factory _TopUpOption.fromJson(Map<String, dynamic> json) =
      _$TopUpOptionImpl.fromJson;

  @override
  double get amount;
  @override
  bool get isSelected;

  /// Create a copy of TopUpOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopUpOptionImplCopyWith<_$TopUpOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
