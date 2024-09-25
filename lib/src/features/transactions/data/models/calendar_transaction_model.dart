import 'package:freezed_annotation/freezed_annotation.dart';

part 'calendar_transaction_model.freezed.dart';



@freezed
class CalendarTransaction with _$CalendarTransaction {
  
  const CalendarTransaction._();
  const factory CalendarTransaction({
    required DateTime date,
    required double totalExpense,
    required double totalIncome,
    required double totalTransfer,
  }) = _CalendarTransaction;

}