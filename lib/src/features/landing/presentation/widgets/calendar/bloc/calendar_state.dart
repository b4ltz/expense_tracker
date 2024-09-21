part of 'calendar_bloc.dart';

final class CalendarState extends Equatable {
   CalendarState({required this.selectedDate}) {
    dates = getCalendarDates(selectedDate);
   }

  final DateTime selectedDate;
  late final List<DateTime> dates;

  CalendarState copyWith({DateTime? selectedDate, List<DateTime>? dates}) {
    return CalendarState(selectedDate: selectedDate ?? this.selectedDate);
  }

  @override
  List<Object?> get props => [selectedDate, dates];

  @override
  String toString() {
    return 'CalendarState{selectedDate=$selectedDate, dates=$dates}';
  }

  String getDateText(DateTime date) {
    if (date.day != 1) {
      return '${date.day}';
    } else {
      return '${date.month}/${date.day}';
    }
  }
}
