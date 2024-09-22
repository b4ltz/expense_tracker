import 'dart:math';

import 'package:expense_tracker/src/shared/models/expense_model.dart';
import 'package:faker/faker.dart';
import 'package:in_date_utils/in_date_utils.dart';

class FakeData {
  static Future<List<Expense>> expenseList(DateTime date) async {
    List<Expense> result = [];
    final faker = Faker();
    await Future.delayed(const Duration(seconds: 1));
    for (int x = 1; x <= DTU.getDaysInMonth(date.year, date.month); x++) {
      for (int i = 0; i < _getRandomResult(5, 10); i++) {
        result.add(Expense(
          id: faker.guid.guid(),
          account: 'Cash',
          date: DateTime(date.year,date.month, x),
          category: faker.food.dish(),
          amount: _getRandomResult(-200, 150) * 1.0,
          note: faker.food.restaurant(),
          totalIncome: _getRandomResult(0, 1000) * 1.0,
          totalExpense: _getRandomResult(-1000, 0) * 1.0,
          isImportant: _getRandomResult(10, 150) % 2 == 0,
        ));
      }
    }
    return result;
  }

  static int _getRandomResult(int min, int max) =>
      min + Random().nextInt(max - min + 1);
}
