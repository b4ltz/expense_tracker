import 'dart:async';

import 'package:expense_tracker/src/features/landing/presentation/widgets/cubit/selected_date_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:expense_tracker/src/core/utils/usecases/date_utils.dart';
import 'package:expense_tracker/src/features/landing/presentation/widgets/calendar/bloc/calendar_event.dart';
import 'package:in_date_utils/in_date_utils.dart';

part 'calendar_state.dart';

class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc(this.selectedMonthBloc)
      : super(CalendarState(selectedDate: DateTime.now())) {
    on<CalendarNextMonthPressed>(_onNextPage);
    on<CalendarPrevMonthPressed>(_onPrevPage);
    on<CalendarOnDateChange>(_onDateChange);
    _selectedMonthSubscription = selectedMonthBloc.stream.listen((date) {
      add(CalendarEvent.onChangeDate(date));
    });
  }

  final SelectedMonthCubit selectedMonthBloc;
  late final StreamSubscription _selectedMonthSubscription;

  @override
  Future<void> close() {
    _selectedMonthSubscription.cancel();
    return super.close();
  }

  FutureOr<void> _onNextPage(
      CalendarNextMonthPressed event, Emitter<CalendarState> emit) {
    final newDate = DTU.addMonths(state.selectedDate, 1);

    emit(CalendarState(selectedDate: newDate));
    // get calendar events for these dates
  }

  FutureOr<void> _onPrevPage(
      CalendarPrevMonthPressed event, Emitter<CalendarState> emit) {
    final newDate = DTU.addMonths(state.selectedDate, -1);
    emit(CalendarState(selectedDate: newDate));
    // get calendar events for these dates
  }

  FutureOr<void> _onDateChange(
      CalendarOnDateChange event, Emitter<CalendarState> emit) {
    emit(CalendarState(selectedDate: event.date));
  }
}
