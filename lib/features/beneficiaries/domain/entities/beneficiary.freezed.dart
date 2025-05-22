// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Beneficiary _$BeneficiaryFromJson(Map<String, dynamic> json) {
  return _Beneficiary.fromJson(json);
}

/// @nodoc
mixin _$Beneficiary {
  String get id => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  double get monthlyTopUpLimit => throw _privateConstructorUsedError;
  double get currentMonthTopUp => throw _privateConstructorUsedError;

  /// Serializes this Beneficiary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Beneficiary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BeneficiaryCopyWith<Beneficiary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryCopyWith<$Res> {
  factory $BeneficiaryCopyWith(
          Beneficiary value, $Res Function(Beneficiary) then) =
      _$BeneficiaryCopyWithImpl<$Res, Beneficiary>;
  @useResult
  $Res call(
      {String id,
      String phoneNumber,
      String nickname,
      double monthlyTopUpLimit,
      double currentMonthTopUp});
}

/// @nodoc
class _$BeneficiaryCopyWithImpl<$Res, $Val extends Beneficiary>
    implements $BeneficiaryCopyWith<$Res> {
  _$BeneficiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Beneficiary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = null,
    Object? nickname = null,
    Object? monthlyTopUpLimit = null,
    Object? currentMonthTopUp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
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
abstract class _$$BeneficiaryImplCopyWith<$Res>
    implements $BeneficiaryCopyWith<$Res> {
  factory _$$BeneficiaryImplCopyWith(
          _$BeneficiaryImpl value, $Res Function(_$BeneficiaryImpl) then) =
      __$$BeneficiaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String phoneNumber,
      String nickname,
      double monthlyTopUpLimit,
      double currentMonthTopUp});
}

/// @nodoc
class __$$BeneficiaryImplCopyWithImpl<$Res>
    extends _$BeneficiaryCopyWithImpl<$Res, _$BeneficiaryImpl>
    implements _$$BeneficiaryImplCopyWith<$Res> {
  __$$BeneficiaryImplCopyWithImpl(
      _$BeneficiaryImpl _value, $Res Function(_$BeneficiaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Beneficiary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = null,
    Object? nickname = null,
    Object? monthlyTopUpLimit = null,
    Object? currentMonthTopUp = null,
  }) {
    return _then(_$BeneficiaryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
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
@JsonSerializable()
class _$BeneficiaryImpl implements _Beneficiary {
  const _$BeneficiaryImpl(
      {required this.id,
      required this.phoneNumber,
      required this.nickname,
      required this.monthlyTopUpLimit,
      required this.currentMonthTopUp});

  factory _$BeneficiaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiaryImplFromJson(json);

  @override
  final String id;
  @override
  final String phoneNumber;
  @override
  final String nickname;
  @override
  final double monthlyTopUpLimit;
  @override
  final double currentMonthTopUp;

  @override
  String toString() {
    return 'Beneficiary(id: $id, phoneNumber: $phoneNumber, nickname: $nickname, monthlyTopUpLimit: $monthlyTopUpLimit, currentMonthTopUp: $currentMonthTopUp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.monthlyTopUpLimit, monthlyTopUpLimit) ||
                other.monthlyTopUpLimit == monthlyTopUpLimit) &&
            (identical(other.currentMonthTopUp, currentMonthTopUp) ||
                other.currentMonthTopUp == currentMonthTopUp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, phoneNumber, nickname,
      monthlyTopUpLimit, currentMonthTopUp);

  /// Create a copy of Beneficiary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryImplCopyWith<_$BeneficiaryImpl> get copyWith =>
      __$$BeneficiaryImplCopyWithImpl<_$BeneficiaryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiaryImplToJson(
      this,
    );
  }
}

abstract class _Beneficiary implements Beneficiary {
  const factory _Beneficiary(
      {required final String id,
      required final String phoneNumber,
      required final String nickname,
      required final double monthlyTopUpLimit,
      required final double currentMonthTopUp}) = _$BeneficiaryImpl;

  factory _Beneficiary.fromJson(Map<String, dynamic> json) =
      _$BeneficiaryImpl.fromJson;

  @override
  String get id;
  @override
  String get phoneNumber;
  @override
  String get nickname;
  @override
  double get monthlyTopUpLimit;
  @override
  double get currentMonthTopUp;

  /// Create a copy of Beneficiary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BeneficiaryImplCopyWith<_$BeneficiaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
