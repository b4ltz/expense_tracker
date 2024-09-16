import 'package:expense_tracker/src/features/accounts/presentation/accounts.dart';
import 'package:expense_tracker/src/features/landing/presentation/landing.dart';
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

class _DashboardPageState extends State<DashboardPage> with SingleTickerProviderStateMixin{
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavigationCubit(),
      child:  SafeArea(
        child: Scaffold(
          body: TabBarView(
            controller: _tabController,
            children: const [
              LandingPage(),
              StatsPage(),
              AccountsPage(),
              SettingsPage(),
            ],
          ),
          bottomNavigationBar:  DashboardBottomNavigation(tabController: _tabController),
        ),
      ),
    );
  }
}
