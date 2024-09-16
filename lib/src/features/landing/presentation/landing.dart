import 'package:expense_tracker/src/features/landing/presentation/widgets/calendar/calendar.dart';
import 'package:expense_tracker/src/features/landing/presentation/widgets/top_navigation.dart';
import 'package:flutter/material.dart';

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
        Container(),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              const Calendar(),
              Container(),
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
