

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_date_utils/in_date_utils.dart';

class SelectedMonthCubit extends Cubit<DateTime> {
  SelectedMonthCubit() : super(DateTime.now());

  void update(DateTime date) => emit(date);

  void nextMonth() {
    emit(DTU.addMonths(state, 1));
  }

  void prevMonth() {
    emit(DTU.addMonths(state, -1));
  }
}
