// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Expense {
  String get id => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String? get subCategory => throw _privateConstructorUsedError;
  String get account => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get totalIncome => throw _privateConstructorUsedError;
  double get totalExpense => throw _privateConstructorUsedError;
  bool get isImportant => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get imgPath => throw _privateConstructorUsedError;

  /// Create a copy of Expense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpenseCopyWith<Expense> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpenseCopyWith<$Res> {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) then) =
      _$ExpenseCopyWithImpl<$Res, Expense>;
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String category,
      String? subCategory,
      String account,
      double amount,
      double totalIncome,
      double totalExpense,
      bool isImportant,
      String? note,
      String? description,
      String? imgPath});
}

/// @nodoc
class _$ExpenseCopyWithImpl<$Res, $Val extends Expense>
    implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Expense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? category = null,
    Object? subCategory = freezed,
    Object? account = null,
    Object? amount = null,
    Object? totalIncome = null,
    Object? totalExpense = null,
    Object? isImportant = null,
    Object? note = freezed,
    Object? description = freezed,
    Object? imgPath = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      totalIncome: null == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as double,
      totalExpense: null == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double,
      isImportant: null == isImportant
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as bool,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpenseImplCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$$ExpenseImplCopyWith(
          _$ExpenseImpl value, $Res Function(_$ExpenseImpl) then) =
      __$$ExpenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime date,
      String category,
      String? subCategory,
      String account,
      double amount,
      double totalIncome,
      double totalExpense,
      bool isImportant,
      String? note,
      String? description,
      String? imgPath});
}

/// @nodoc
class __$$ExpenseImplCopyWithImpl<$Res>
    extends _$ExpenseCopyWithImpl<$Res, _$ExpenseImpl>
    implements _$$ExpenseImplCopyWith<$Res> {
  __$$ExpenseImplCopyWithImpl(
      _$ExpenseImpl _value, $Res Function(_$ExpenseImpl) _then)
      : super(_value, _then);

  /// Create a copy of Expense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? category = null,
    Object? subCategory = freezed,
    Object? account = null,
    Object? amount = null,
    Object? totalIncome = null,
    Object? totalExpense = null,
    Object? isImportant = null,
    Object? note = freezed,
    Object? description = freezed,
    Object? imgPath = freezed,
  }) {
    return _then(_$ExpenseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      subCategory: freezed == subCategory
          ? _value.subCategory
          : subCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      account: null == account
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      totalIncome: null == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as double,
      totalExpense: null == totalExpense
          ? _value.totalExpense
          : totalExpense // ignore: cast_nullable_to_non_nullable
              as double,
      isImportant: null == isImportant
          ? _value.isImportant
          : isImportant // ignore: cast_nullable_to_non_nullable
              as bool,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      imgPath: freezed == imgPath
          ? _value.imgPath
          : imgPath // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ExpenseImpl extends _Expense {
  const _$ExpenseImpl(
      {required this.id,
      required this.date,
      required this.category,
      this.subCategory,
      required this.account,
      required this.amount,
      required this.totalIncome,
      required this.totalExpense,
      required this.isImportant,
      this.note,
      this.description,
      this.imgPath})
      : super._();

  @override
  final String id;
  @override
  final DateTime date;
  @override
  final String category;
  @override
  final String? subCategory;
  @override
  final String account;
  @override
  final double amount;
  @override
  final double totalIncome;
  @override
  final double totalExpense;
  @override
  final bool isImportant;
  @override
  final String? note;
  @override
  final String? description;
  @override
  final String? imgPath;

  @override
  String toString() {
    return 'Expense(id: $id, date: $date, category: $category, subCategory: $subCategory, account: $account, amount: $amount, totalIncome: $totalIncome, totalExpense: $totalExpense, isImportant: $isImportant, note: $note, description: $description, imgPath: $imgPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpenseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.subCategory, subCategory) ||
                other.subCategory == subCategory) &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.totalExpense, totalExpense) ||
                other.totalExpense == totalExpense) &&
            (identical(other.isImportant, isImportant) ||
                other.isImportant == isImportant) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imgPath, imgPath) || other.imgPath == imgPath));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      date,
      category,
      subCategory,
      account,
      amount,
      totalIncome,
      totalExpense,
      isImportant,
      note,
      description,
      imgPath);

  /// Create a copy of Expense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpenseImplCopyWith<_$ExpenseImpl> get copyWith =>
      __$$ExpenseImplCopyWithImpl<_$ExpenseImpl>(this, _$identity);
}

abstract class _Expense extends Expense {
  const factory _Expense(
      {required final String id,
      required final DateTime date,
      required final String category,
      final String? subCategory,
      required final String account,
      required final double amount,
      required final double totalIncome,
      required final double totalExpense,
      required final bool isImportant,
      final String? note,
      final String? description,
      final String? imgPath}) = _$ExpenseImpl;
  const _Expense._() : super._();

  @override
  String get id;
  @override
  DateTime get date;
  @override
  String get category;
  @override
  String? get subCategory;
  @override
  String get account;
  @override
  double get amount;
  @override
  double get totalIncome;
  @override
  double get totalExpense;
  @override
  bool get isImportant;
  @override
  String? get note;
  @override
  String? get description;
  @override
  String? get imgPath;

  /// Create a copy of Expense
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpenseImplCopyWith<_$ExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
