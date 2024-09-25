import 'package:expense_tracker/src/core/utils/typedefs.dart';
import 'package:expense_tracker/src/core/utils/usecases/usecase.dart';
import 'package:expense_tracker/src/features/transactions/data/models/calendar_transaction_model.dart';
import 'package:expense_tracker/src/features/transactions/data/models/expense_model.dart';
import 'package:expense_tracker/src/features/transactions/domain/repository/abstract_transaction_repository.dart';

class GetCalendarTransaction implements UseCaseWithParams<List<CalendarTransaction>, DateTime>{
  const GetCalendarTransaction(this._repository);
  final AbstractTransactionRepository _repository;

  @override
  ResultFuture<List<CalendarTransaction>> call(DateTime params) async => await _repository.getCalendarTransaction(params);
}