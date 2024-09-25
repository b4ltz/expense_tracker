// Unit Test file for get_calendar_transaction.dart

// what does the class depends on

import 'package:dartz/dartz.dart';
import 'package:expense_tracker/src/features/transactions/data/models/calendar_transaction_model.dart';
import 'package:expense_tracker/src/features/transactions/domain/repository/abstract_transaction_repository.dart';
import 'package:expense_tracker/src/features/transactions/domain/usecase/get_calendar_transaction.dart';
import 'package:expense_tracker/src/features/transactions/presentation/calendar_tab/calendar.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockTransactionRepo extends Mock
    implements AbstractTransactionRepository {}

void main() {
  late GetCalendarTransaction usecase;
  late AbstractTransactionRepository repository;
  setUp(() {
    repository = MockTransactionRepo();
    registerFallbackValue(DateTime(2024, 9, 25));

    usecase = GetCalendarTransaction(repository);
  });
  final params = DateTime(2024, 9, 25);
  test('Should call the [TransactionRepository.getCalendarTransaction]',
      () async {
    // Arange
    when(
      () => repository.getCalendarTransaction(any()),
    ).thenAnswer((_) async => const Right([]));

    // Act
    final result = await usecase(DateTime(2024, 9, 25));
    // Assert
    expect(result, const Right<dynamic, List<CalendarTransaction>>([]));

    verify(
      () => repository.getCalendarTransaction(params),
    ).called(1);

    verifyNoMoreInteractions(repository);
  });
}
