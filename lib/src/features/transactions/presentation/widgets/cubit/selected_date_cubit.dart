

import 'package:flutter_bloc/flutter_bloc.dart';

class SelectedMonthCubit extends Cubit<DateTime> {
  SelectedMonthCubit() : super(DateTime.now());

  void update(DateTime date) => emit(date);
}
