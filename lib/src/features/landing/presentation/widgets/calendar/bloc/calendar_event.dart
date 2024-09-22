// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'calendar_event.freezed.dart';



@freezed
class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.nextMonthPressed() = CalendarNextMonthPressed;
  const factory CalendarEvent.prevMonthPressed() = CalendarPrevMonthPressed;
  const factory CalendarEvent.onChangeDate(DateTime date) = CalendarOnDateChange;
  const factory CalendarEvent.daySelected(DateTime date) = CalendarDaySelected;
}