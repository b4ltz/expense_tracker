import 'package:expense_tracker/src/core/utils/typedefs.dart';
import 'package:expense_tracker/src/features/transactions/data/models/calendar_transaction_model.dart';
import 'package:expense_tracker/src/features/transactions/data/models/expense_model.dart';

abstract interface class AbstractTransactionRepository {
  /// Get [Daily] Transaction of a given month
  ResultFuture<List<Expense>> getDailyTransaction(DateTime date);
  /// Get [Calendar] Transaction of a given month
  ResultFuture<List<CalendarTransaction>> getCalendarTransaction(DateTime date);

  
}