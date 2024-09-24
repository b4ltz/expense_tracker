part of 'daily_bloc.dart';

@freezed
class DailyEvent with _$DailyEvent {
  const factory DailyEvent.onInitialize() = _OnInitialize;
  const factory DailyEvent.onRefresh() = _OnRefresh;
  const factory DailyEvent.onNextPage() = _OnNext;
  const factory DailyEvent.onPrevPage() = _OnPrev;
  const factory DailyEvent.onDaySelect(DateTime date) = _OnDaySelect;
  const factory DailyEvent.onChangeDate(DateTime date) = _OnDateChange;
}