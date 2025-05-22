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

/// @nodoc
mixin _$BeneficiaryModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  double get monthlyTopUpLimit => throw _privateConstructorUsedError;
  double get currentMonthTopUp => throw _privateConstructorUsedError;

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
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      double monthlyTopUpLimit,
      double currentMonthTopUp});
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
    Object? phoneNumber = null,
    Object? monthlyTopUpLimit = null,
    Object? currentMonthTopUp = null,
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
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyTopUpLimit: null == monthlyTopUpLimit
          ? _value.monthlyTopUpLimit
          : monthlyTopUpLimit // ignore: cast_nullable_to_non_nullable
              as double,
      currentMonthTopUp: null == currentMonthTopUp
          ? _value.currentMonthTopUp
          : currentMonthTopUp // ignore: cast_nullable_to_non_nullable
              as double,
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
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      double monthlyTopUpLimit,
      double currentMonthTopUp});
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
    Object? phoneNumber = null,
    Object? monthlyTopUpLimit = null,
    Object? currentMonthTopUp = null,
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
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyTopUpLimit: null == monthlyTopUpLimit
          ? _value.monthlyTopUpLimit
          : monthlyTopUpLimit // ignore: cast_nullable_to_non_nullable
              as double,
      currentMonthTopUp: null == currentMonthTopUp
          ? _value.currentMonthTopUp
          : currentMonthTopUp // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$BeneficiaryModelImpl implements _BeneficiaryModel {
  const _$BeneficiaryModelImpl(
      {required this.id,
      required this.name,
      required this.phoneNumber,
      this.monthlyTopUpLimit = 0.0,
      this.currentMonthTopUp = 0.0});

  @override
  final String id;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  @JsonKey()
  final double monthlyTopUpLimit;
  @override
  @JsonKey()
  final double currentMonthTopUp;

  @override
  String toString() {
    return 'BeneficiaryModel(id: $id, name: $name, phoneNumber: $phoneNumber, monthlyTopUpLimit: $monthlyTopUpLimit, currentMonthTopUp: $currentMonthTopUp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.monthlyTopUpLimit, monthlyTopUpLimit) ||
                other.monthlyTopUpLimit == monthlyTopUpLimit) &&
            (identical(other.currentMonthTopUp, currentMonthTopUp) ||
                other.currentMonthTopUp == currentMonthTopUp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, phoneNumber, monthlyTopUpLimit, currentMonthTopUp);

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryModelImplCopyWith<_$BeneficiaryModelImpl> get copyWith =>
      __$$BeneficiaryModelImplCopyWithImpl<_$BeneficiaryModelImpl>(
          this, _$identity);
}

abstract class _BeneficiaryModel implements BeneficiaryModel {
  const factory _BeneficiaryModel(
      {required final String id,
      required final String name,
      required final String phoneNumber,
      final double monthlyTopUpLimit,
      final double currentMonthTopUp}) = _$BeneficiaryModelImpl;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  double get monthlyTopUpLimit;
  @override
  double get currentMonthTopUp;

  /// Create a copy of BeneficiaryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeneficiaryModelImplCopyWith<_$BeneficiaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
