import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_model.freezed.dart';



@freezed
class Expense with _$Expense {
  
  const Expense._();
  const factory Expense({
    required String id,
    required DateTime date,
    required String category,
    String? subCategory,
    required String account,
    required double amount,
    required double totalIncome,
    required double totalExpense,
    required bool isImportant,
    String? note,
    String? description,
    String? imgPath
  }) = _Expense;

  bool get isExpense => amount < 0;
}