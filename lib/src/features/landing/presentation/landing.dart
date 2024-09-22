import 'package:expense_tracker/src/features/landing/presentation/widgets/calendar/calendar.dart';
import 'package:expense_tracker/src/features/landing/presentation/widgets/cubit/selected_date_cubit.dart';
import 'package:expense_tracker/src/features/landing/presentation/widgets/daily/bloc/daily_bloc.dart';
import 'package:expense_tracker/src/features/landing/presentation/widgets/daily/daily.dart';
import 'package:expense_tracker/src/features/landing/presentation/widgets/top_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
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
        TransAppBar(tabController: _tabController),
        Expanded(
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
      ],
    );
  }
}
