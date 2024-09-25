import 'dart:async';

import 'package:expense_tracker/src/features/transactions/presentation/cubit/selected_date_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:expense_tracker/src/core/utils/usecases/date_utils.dart';
import 'package:expense_tracker/src/features/transactions/presentation/calendar_tab/bloc/calendar_event.dart';
import 'package:in_date_utils/in_date_utils.dart';

part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc(this._selectedDate)
      : super(CalendarState(selectedDate: DateTime.now())) {
    on<CalendarNextMonthPressed>(_onNextPage);
    on<CalendarPrevMonthPressed>(_onPrevPage);
    on<CalendarOnDateChange>(_onDateChange);
  }

  DateTime _selectedDate;

  FutureOr<void> _onNextPage(
      CalendarNextMonthPressed event, Emitter<CalendarState> emit) {

    emit(CalendarState(selectedDate: _selectedDate));
    // get calendar events for these dates
  }

  FutureOr<void> _onPrevPage(
      CalendarPrevMonthPressed event, Emitter<CalendarState> emit) {
    final newDate = DTU.addMonths(state.selectedDate, -1);
    emit(CalendarState(selectedDate: _selectedDate));
    // get calendar events for these dates
  }

  FutureOr<void> _onDateChange(
      CalendarOnDateChange event, Emitter<CalendarState> emit) {
        _selectedDate = event.date;
    emit(CalendarState(selectedDate: event.date));
  }
}
