part of 'daily_bloc.dart';

@freezed
class DailyState with _$DailyState {
  const factory DailyState.initial() = _DailyStateInitial;
  const factory DailyState.loading() = _DailyStateLoading;
  const factory DailyState.data(List<Expense> data) = DailyStateData;

}
