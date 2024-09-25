import 'package:expense_tracker/src/core/utils/usecases/fake_data.dart';
import 'package:expense_tracker/src/features/transactions/data/models/expense_model.dart';

abstract interface class AbstractTransactionDataSource {
  /// asdalsd,asdasd
  Future<List<Expense>> getDailyTransactions(DateTime date);
}


class TransactionDataSource implements AbstractTransactionDataSource{
  @override
  Future<List<Expense>> getDailyTransactions(DateTime date) async {
    final fakeData = FakeData();

    return await FakeData.expenseList(date);
  }

}

