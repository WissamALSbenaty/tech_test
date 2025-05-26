// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_up_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopUpOptionModel _$TopUpOptionModelFromJson(Map<String, dynamic> json) {
  return _TopUpOptionModel.fromJson(json);
}

/// @nodoc
mixin _$TopUpOptionModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  /// Serializes this TopUpOptionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopUpOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopUpOptionModelCopyWith<TopUpOptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopUpOptionModelCopyWith<$Res> {
  factory $TopUpOptionModelCopyWith(
          TopUpOptionModel value, $Res Function(TopUpOptionModel) then) =
      _$TopUpOptionModelCopyWithImpl<$Res, TopUpOptionModel>;
  @useResult
  $Res call({String id, String name, double amount});
}

/// @nodoc
class _$TopUpOptionModelCopyWithImpl<$Res, $Val extends TopUpOptionModel>
    implements $TopUpOptionModelCopyWith<$Res> {
  _$TopUpOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopUpOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopUpOptionModelImplCopyWith<$Res>
    implements $TopUpOptionModelCopyWith<$Res> {
  factory _$$TopUpOptionModelImplCopyWith(_$TopUpOptionModelImpl value,
          $Res Function(_$TopUpOptionModelImpl) then) =
      __$$TopUpOptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, double amount});
}

/// @nodoc
class __$$TopUpOptionModelImplCopyWithImpl<$Res>
    extends _$TopUpOptionModelCopyWithImpl<$Res, _$TopUpOptionModelImpl>
    implements _$$TopUpOptionModelImplCopyWith<$Res> {
  __$$TopUpOptionModelImplCopyWithImpl(_$TopUpOptionModelImpl _value,
      $Res Function(_$TopUpOptionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopUpOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? amount = null,
  }) {
    return _then(_$TopUpOptionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopUpOptionModelImpl implements _TopUpOptionModel {
  const _$TopUpOptionModelImpl(
      {required this.id, required this.name, required this.amount});

  factory _$TopUpOptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopUpOptionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final double amount;

  @override
  String toString() {
    return 'TopUpOptionModel(id: $id, name: $name, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopUpOptionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, amount);

  /// Create a copy of TopUpOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopUpOptionModelImplCopyWith<_$TopUpOptionModelImpl> get copyWith =>
      __$$TopUpOptionModelImplCopyWithImpl<_$TopUpOptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopUpOptionModelImplToJson(
      this,
    );
  }
}

abstract class _TopUpOptionModel implements TopUpOptionModel {
  const factory _TopUpOptionModel(
      {required final String id,
      required final String name,
      required final double amount}) = _$TopUpOptionModelImpl;

  factory _TopUpOptionModel.fromJson(Map<String, dynamic> json) =
      _$TopUpOptionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  double get amount;

  /// Create a copy of TopUpOptionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopUpOptionModelImplCopyWith<_$TopUpOptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
