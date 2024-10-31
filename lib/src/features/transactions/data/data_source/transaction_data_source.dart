

import 'package:expense_tracker/src/core/utils/typedefs.dart';
import 'package:expense_tracker/src/features/transactions/data/models/calendar_transaction_model.dart';
import 'package:expense_tracker/src/features/transactions/data/models/expense_model.dart';


abstract class AbstractTransactionDataSource {
  
  /// Get [Daily] Transaction of a given month
  Future<List<Expense>> getDailyTransaction(DateTime date);
  /// Get [Calendar] Transaction of a given month
  Future<List<CalendarTransaction>> getCalendarTransaction(DateTime date);
}


class TransactionDataSource extends AbstractTransactionDataSource {
  @override
  Future<List<CalendarTransaction>> getCalendarTransaction(DateTime date) {
    final x = <CalendarTransaction>[];
    return Future.value(x);
  }

  @override
  Future<List<Expense>> getDailyTransaction(DateTime date) {
    final x = <Expense>[];
    return Future.value(x);
  }
  
}