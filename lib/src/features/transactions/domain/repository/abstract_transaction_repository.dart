import 'package:expense_tracker/src/features/transactions/data/models/expense_model.dart';

abstract interface class AbstractTransactionRepository {
  /// Get [Daily] Transaction of a given month
  Future<List<Expense>> getDailyTransaction(DateTime date);
  /// Get [Calendar] Transaction of a given month
  Future<List<Expense>> getCalendarTransaction(DateTime date);

  
}