import 'package:expense_tracker/src/features/accounts/presentation/accounts.dart';
import 'package:expense_tracker/src/features/transactions/presentation/transaction.dart';
import 'package:expense_tracker/src/features/transactions/presentation/calendar_tab/bloc/calendar_bloc.dart';
import 'package:expense_tracker/src/features/transactions/presentation/cubit/selected_date_cubit.dart';
import 'package:expense_tracker/src/features/transactions/presentation/daily_tab/bloc/daily_bloc.dart';
import 'package:expense_tracker/src/features/root/presentation/bloc/bottom_nav_cubit.dart';
import 'package:expense_tracker/src/features/root/presentation/widgets/bottom_navigation.dart';
import 'package:expense_tracker/src/features/settings/presentation/settings.dart';
import 'package:expense_tracker/src/features/stats/presentation/stats.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => BottomNavigationCubit()),
        BlocProvider(create: (context) => SelectedMonthCubit())
      ],
      child: SafeArea(
        child: Scaffold(
          body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) =>
                        CalendarBloc(context.read<SelectedMonthCubit>().state),
                  ),
                  BlocProvider(
                    create: (context) {
                      final bloc =
                          DailyBloc(context.read<SelectedMonthCubit>().state);
                      bloc.add(const DailyEvent.onInitialize());
                      return bloc;
                    },
                  ),
                ],
                child: const TransactionPage(),
              ),
              const StatsPage(),
              const AccountsPage(),
              const SettingsPage(),
            ],
          ),
          bottomNavigationBar:
              DashboardBottomNavigation(tabController: _tabController),
        ),
      ),
    );
  }
}
