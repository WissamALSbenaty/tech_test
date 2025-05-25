// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_top_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTopUpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)
        loaded,
    required TResult Function(CustomError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)?
        loaded,
    TResult? Function(CustomError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)?
        loaded,
    TResult Function(CustomError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTopUpStateCopyWith<$Res> {
  factory $CreateTopUpStateCopyWith(
          CreateTopUpState value, $Res Function(CreateTopUpState) then) =
      _$CreateTopUpStateCopyWithImpl<$Res, CreateTopUpState>;
}

/// @nodoc
class _$CreateTopUpStateCopyWithImpl<$Res, $Val extends CreateTopUpState>
    implements $CreateTopUpStateCopyWith<$Res> {
  _$CreateTopUpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTopUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$CreateTopUpStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTopUpState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'CreateTopUpState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)
        loaded,
    required TResult Function(CustomError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)?
        loaded,
    TResult? Function(CustomError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)?
        loaded,
    TResult Function(CustomError error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CreateTopUpState {
  const factory Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<BeneficiaryModel> beneficiaries,
      bool isSubmittingRequest,
      int? selectedBeneficiaryId,
      int? selectedTopUpAmount});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$CreateTopUpStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTopUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? beneficiaries = null,
    Object? isSubmittingRequest = null,
    Object? selectedBeneficiaryId = freezed,
    Object? selectedTopUpAmount = freezed,
  }) {
    return _then(_$LoadedImpl(
      beneficiaries: null == beneficiaries
          ? _value._beneficiaries
          : beneficiaries // ignore: cast_nullable_to_non_nullable
              as List<BeneficiaryModel>,
      isSubmittingRequest: null == isSubmittingRequest
          ? _value.isSubmittingRequest
          : isSubmittingRequest // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedBeneficiaryId: freezed == selectedBeneficiaryId
          ? _value.selectedBeneficiaryId
          : selectedBeneficiaryId // ignore: cast_nullable_to_non_nullable
              as int?,
      selectedTopUpAmount: freezed == selectedTopUpAmount
          ? _value.selectedTopUpAmount
          : selectedTopUpAmount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements Loaded {
  const _$LoadedImpl(
      {required final List<BeneficiaryModel> beneficiaries,
      this.isSubmittingRequest = false,
      this.selectedBeneficiaryId,
      this.selectedTopUpAmount})
      : _beneficiaries = beneficiaries;

  final List<BeneficiaryModel> _beneficiaries;
  @override
  List<BeneficiaryModel> get beneficiaries {
    if (_beneficiaries is EqualUnmodifiableListView) return _beneficiaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_beneficiaries);
  }

  @override
  @JsonKey()
  final bool isSubmittingRequest;
  @override
  final int? selectedBeneficiaryId;
  @override
  final int? selectedTopUpAmount;

  @override
  String toString() {
    return 'CreateTopUpState.loaded(beneficiaries: $beneficiaries, isSubmittingRequest: $isSubmittingRequest, selectedBeneficiaryId: $selectedBeneficiaryId, selectedTopUpAmount: $selectedTopUpAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._beneficiaries, _beneficiaries) &&
            (identical(other.isSubmittingRequest, isSubmittingRequest) ||
                other.isSubmittingRequest == isSubmittingRequest) &&
            (identical(other.selectedBeneficiaryId, selectedBeneficiaryId) ||
                other.selectedBeneficiaryId == selectedBeneficiaryId) &&
            (identical(other.selectedTopUpAmount, selectedTopUpAmount) ||
                other.selectedTopUpAmount == selectedTopUpAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_beneficiaries),
      isSubmittingRequest,
      selectedBeneficiaryId,
      selectedTopUpAmount);

  /// Create a copy of CreateTopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)
        loaded,
    required TResult Function(CustomError error) error,
  }) {
    return loaded(beneficiaries, isSubmittingRequest, selectedBeneficiaryId,
        selectedTopUpAmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)?
        loaded,
    TResult? Function(CustomError error)? error,
  }) {
    return loaded?.call(beneficiaries, isSubmittingRequest,
        selectedBeneficiaryId, selectedTopUpAmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)?
        loaded,
    TResult Function(CustomError error)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(beneficiaries, isSubmittingRequest, selectedBeneficiaryId,
          selectedTopUpAmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements CreateTopUpState {
  const factory Loaded(
      {required final List<BeneficiaryModel> beneficiaries,
      final bool isSubmittingRequest,
      final int? selectedBeneficiaryId,
      final int? selectedTopUpAmount}) = _$LoadedImpl;

  List<BeneficiaryModel> get beneficiaries;
  bool get isSubmittingRequest;
  int? get selectedBeneficiaryId;
  int? get selectedTopUpAmount;

  /// Create a copy of CreateTopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomError error});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$CreateTopUpStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTopUpState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CustomError,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements Error {
  const _$ErrorImpl(this.error);

  @override
  final CustomError error;

  @override
  String toString() {
    return 'CreateTopUpState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of CreateTopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)
        loaded,
    required TResult Function(CustomError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)?
        loaded,
    TResult? Function(CustomError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<BeneficiaryModel> beneficiaries,
            bool isSubmittingRequest,
            int? selectedBeneficiaryId,
            int? selectedTopUpAmount)?
        loaded,
    TResult Function(CustomError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements CreateTopUpState {
  const factory Error(final CustomError error) = _$ErrorImpl;

  CustomError get error;

  /// Create a copy of CreateTopUpState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
