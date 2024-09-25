// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calendar_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CalendarTransaction {
  DateTime get date => throw _privateConstructorUsedError;
  double get totalExpense => throw _privateConstructorUsedError;
  double get totalIncome => throw _privateConstructorUsedError;
  double get totalTransfer => throw _privateConstructorUsedError;

  /// Create a copy of CalendarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CalendarTransactionCopyWith<CalendarTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CalendarTransactionCopyWith<$Res> {
  factory $CalendarTransactionCopyWith(
          CalendarTransaction value, $Res Function(CalendarTransaction) then) =
      _$CalendarTransactionCopyWithImpl<$Res, CalendarTransaction>;
  @useResult
  $Res call(
      {DateTime date,
      double totalExpense,
      double totalIncome,
      double totalTransfer});
}

/// @nodoc
class _$CalendarTransactionCopyWithImpl<$Res, $Val extends CalendarTransaction>
    implements $CalendarTransactionCopyWith<$Res> {
  _$CalendarTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CalendarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? totalExpense = null,
    Object? totalIncome = null,
    Object? totalTransfer = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalExpense: null == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double,
      totalIncome: null == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as double,
      totalTransfer: null == totalTransfer
          ? _value.totalTransfer
          : totalTransfer // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CalendarTransactionImplCopyWith<$Res>
    implements $CalendarTransactionCopyWith<$Res> {
  factory _$$CalendarTransactionImplCopyWith(_$CalendarTransactionImpl value,
          $Res Function(_$CalendarTransactionImpl) then) =
      __$$CalendarTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      double totalExpense,
      double totalIncome,
      double totalTransfer});
}

/// @nodoc
class __$$CalendarTransactionImplCopyWithImpl<$Res>
    extends _$CalendarTransactionCopyWithImpl<$Res, _$CalendarTransactionImpl>
    implements _$$CalendarTransactionImplCopyWith<$Res> {
  __$$CalendarTransactionImplCopyWithImpl(_$CalendarTransactionImpl _value,
      $Res Function(_$CalendarTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of CalendarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? totalExpense = null,
    Object? totalIncome = null,
    Object? totalTransfer = null,
  }) {
    return _then(_$CalendarTransactionImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalExpense: null == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double,
      totalIncome: null == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as double,
      totalTransfer: null == totalTransfer
          ? _value.totalTransfer
          : totalTransfer // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CalendarTransactionImpl extends _CalendarTransaction {
  const _$CalendarTransactionImpl(
      {required this.date,
      required this.totalExpense,
      required this.totalIncome,
      required this.totalTransfer})
      : super._();

  @override
  final DateTime date;
  @override
  final double totalExpense;
  @override
  final double totalIncome;
  @override
  final double totalTransfer;

  @override
  String toString() {
    return 'CalendarTransaction(date: $date, totalExpense: $totalExpense, totalIncome: $totalIncome, totalTransfer: $totalTransfer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CalendarTransactionImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totalExpense, totalExpense) ||
                other.totalExpense == totalExpense) &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.totalTransfer, totalTransfer) ||
                other.totalTransfer == totalTransfer));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, date, totalExpense, totalIncome, totalTransfer);

  /// Create a copy of CalendarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CalendarTransactionImplCopyWith<_$CalendarTransactionImpl> get copyWith =>
      __$$CalendarTransactionImplCopyWithImpl<_$CalendarTransactionImpl>(
          this, _$identity);
}

abstract class _CalendarTransaction extends CalendarTransaction {
  const factory _CalendarTransaction(
      {required final DateTime date,
      required final double totalExpense,
      required final double totalIncome,
      required final double totalTransfer}) = _$CalendarTransactionImpl;
  const _CalendarTransaction._() : super._();

  @override
  DateTime get date;
  @override
  double get totalExpense;
  @override
  double get totalIncome;
  @override
  double get totalTransfer;

  /// Create a copy of CalendarTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CalendarTransactionImplCopyWith<_$CalendarTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
