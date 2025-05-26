// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeneficiaryModel _$BeneficiaryModelFromJson(Map<String, dynamic> json) {
  return _BeneficiaryModel.fromJson(json);
}

/// @nodoc
mixin _$BeneficiaryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;

  /// Serializes this BeneficiaryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BeneficiaryModelCopyWith<BeneficiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryModelCopyWith<$Res> {
  factory $BeneficiaryModelCopyWith(
          BeneficiaryModel value, $Res Function(BeneficiaryModel) then) =
      _$BeneficiaryModelCopyWithImpl<$Res, BeneficiaryModel>;
  @useResult
  $Res call({String id, String name, String accountNumber});
}

/// @nodoc
class _$BeneficiaryModelCopyWithImpl<$Res, $Val extends BeneficiaryModel>
    implements $BeneficiaryModelCopyWith<$Res> {
  _$BeneficiaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? accountNumber = null,
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
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeneficiaryModelImplCopyWith<$Res>
    implements $BeneficiaryModelCopyWith<$Res> {
  factory _$$BeneficiaryModelImplCopyWith(_$BeneficiaryModelImpl value,
          $Res Function(_$BeneficiaryModelImpl) then) =
      __$$BeneficiaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String accountNumber});
}

/// @nodoc
class __$$BeneficiaryModelImplCopyWithImpl<$Res>
    extends _$BeneficiaryModelCopyWithImpl<$Res, _$BeneficiaryModelImpl>
    implements _$$BeneficiaryModelImplCopyWith<$Res> {
  __$$BeneficiaryModelImplCopyWithImpl(_$BeneficiaryModelImpl _value,
      $Res Function(_$BeneficiaryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? accountNumber = null,
  }) {
    return _then(_$BeneficiaryModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeneficiaryModelImpl implements _BeneficiaryModel {
  const _$BeneficiaryModelImpl(
      {required this.id, required this.name, required this.accountNumber});

  factory _$BeneficiaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiaryModelImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String accountNumber;

  @override
  String toString() {
    return 'BeneficiaryModel(id: $id, name: $name, accountNumber: $accountNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, accountNumber);

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryModelImplCopyWith<_$BeneficiaryModelImpl> get copyWith =>
      __$$BeneficiaryModelImplCopyWithImpl<_$BeneficiaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiaryModelImplToJson(
      this,
    );
  }
}

abstract class _BeneficiaryModel implements BeneficiaryModel {
  const factory _BeneficiaryModel(
      {required final String id,
      required final String name,
      required final String accountNumber}) = _$BeneficiaryModelImpl;

  factory _BeneficiaryModel.fromJson(Map<String, dynamic> json) =
      _$BeneficiaryModelImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get accountNumber;

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeneficiaryModelImplCopyWith<_$BeneficiaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
