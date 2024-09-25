import 'package:expense_tracker/src/features/transactions/presentation/calendar_tab/bloc/calendar_bloc.dart';
import 'package:expense_tracker/src/features/transactions/presentation/calendar_tab/bloc/calendar_event.dart';
import 'package:expense_tracker/src/features/transactions/presentation/calendar_tab/calendar.dart';
import 'package:expense_tracker/src/features/transactions/presentation/cubit/selected_date_cubit.dart';
import 'package:expense_tracker/src/features/transactions/presentation/daily_tab/bloc/daily_bloc.dart';
import 'package:expense_tracker/src/features/transactions/presentation/daily_tab/daily.dart';
import 'package:expense_tracker/src/features/transactions/presentation/widgets/transaction_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionAppBar(tabController: _tabController),
        Expanded(
          child: BlocListener<SelectedMonthCubit, DateTime>(
            listener: (context, state) {
              if (_tabController.index == 0) {
                context.read<CalendarBloc>().add(CalendarEvent.onChangeDate(state));
              } else if (_tabController.index == 1) {
                context.read<DailyBloc>().add(DailyEvent.onChangeDate(state));
              }
            },
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                const Calendar(),
                const Daily(),
                Container(),
                Container(),
                Container(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
