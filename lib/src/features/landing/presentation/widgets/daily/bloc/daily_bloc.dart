import 'dart:async';

import 'package:expense_tracker/src/core/utils/usecases/fake_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:expense_tracker/src/features/landing/presentation/widgets/cubit/selected_date_cubit.dart';
import 'package:expense_tracker/src/shared/models/expense_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'daily_event.dart';
part 'daily_state.dart';
part 'daily_bloc.freezed.dart';

class DailyBloc extends Bloc<DailyEvent, DailyState> {
  DailyBloc(this._selectedMonth) : super(const DailyState.initial()){
    on<_OnNext>(_onNext);
    on<_OnPrev>(_onPrev);
    on<_OnDaySelect>(_onDaySelect);
    on<_OnDateChange>(_onDateChange);
    on<_OnInitialize>(_onInit);
    on<_OnRefresh>(_onRefresh);
    _selectedMonthStream = _selectedMonth.stream.listen((date) {
      add(_OnDateChange(date));
    });
  }
  late final StreamSubscription<DateTime> _selectedMonthStream;
  final SelectedMonthCubit _selectedMonth;

  @override
  Future<void> close() {
    _selectedMonthStream.cancel();
    return super.close();
  }

  @override
  void onChange(Change<DailyState> change) {
    super.onChange(change);
    print(change);
  }

  FutureOr<void> _onNext(_OnNext event, Emitter<DailyState> emit) async{
    emit(const DailyState.loading());
    final data = await FakeData.expenseList(_selectedMonth.state);
    emit(DailyState.data(data));
  }

  FutureOr<void> _onPrev(_OnPrev event, Emitter<DailyState> emit)async {
    emit(const DailyState.loading());
    final data = await FakeData.expenseList(_selectedMonth.state);
    emit(DailyState.data(data));
  }

  FutureOr<void> _onDaySelect(_OnDaySelect event, Emitter<DailyState> emit) {
  }

  FutureOr<void> _onDateChange(
      _OnDateChange event, Emitter<DailyState> emit) async {
    emit(const DailyState.loading());
    final data = await FakeData.expenseList(event.date);
    emit(DailyState.data(data));
  }


  FutureOr<void> _onInit(_OnInitialize event, Emitter<DailyState> emit) async {
    emit(const DailyState.loading());
    final data = await FakeData.expenseList(_selectedMonth.state);
    emit(DailyState.data(data));
  }

  FutureOr<void> _onRefresh(_OnRefresh event, Emitter<DailyState> emit) async{
    final data = await FakeData.expenseList(_selectedMonth.state);
    emit(DailyState.data(data));
  }
}
