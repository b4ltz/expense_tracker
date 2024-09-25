import 'package:expense_tracker/src/core/utils/typedefs.dart';
import 'package:expense_tracker/src/core/utils/usecases/usecase.dart';
import 'package:expense_tracker/src/features/transactions/data/models/expense_model.dart';
import 'package:expense_tracker/src/features/transactions/domain/repository/abstract_transaction_repository.dart';

class GetDailyTransaction
    implements UseCaseWithParams<List<Expense>, DateTime> {
  const GetDailyTransaction(this._repository);

  final AbstractTransactionRepository _repository;

  @override
  ResultFuture<List<Expense>> call(DateTime params) async =>
      _repository.getDailyTransaction(params);
}
