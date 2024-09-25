import 'package:expense_tracker/src/features/transactions/presentation/calendar_tab/bloc/calendar_bloc.dart';
import 'package:expense_tracker/src/features/transactions/presentation/calendar_tab/bloc/calendar_event.dart';
import 'package:expense_tracker/src/features/transactions/presentation/cubit/selected_date_cubit.dart';
import 'package:expense_tracker/src/features/transactions/presentation/daily_tab/bloc/daily_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class TransactionAppBar extends StatefulWidget {
  final TabController tabController;

  const TransactionAppBar({super.key, required this.tabController});

  @override
  State<TransactionAppBar> createState() => _TransactionAppBarState();
}

class _TransactionAppBarState extends State<TransactionAppBar> {
  late final ValueNotifier<int> _index =
      ValueNotifier(widget.tabController.index);
  @override
  void initState() {
    super.initState();
    widget.tabController.addListener(() {
      _index.value = widget.tabController.index;
    });
  }

  @override
  void dispose() {
    _index.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surfaceBright,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.star_border),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_list),
                  ),
                ],
              ),
              const Text('Trans.'),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  context.read<SelectedMonthCubit>().prevMonth();
                },
                icon: const Icon(Icons.chevron_left),
              ),
              Expanded(
                child: Center(
                  child: BlocBuilder<SelectedMonthCubit, DateTime>(
                    builder: (context, state) {
                      final f = DateFormat('MMMM yyyy');
                      return Text(f.format(state));
                    },
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  context.read<SelectedMonthCubit>().nextMonth();
                },
                icon: const Icon(Icons.chevron_right),
              ),
            ],
          ),
          TabBar(
            controller: widget.tabController,
            tabs: const [
              Tab(child: Text('Calendar')),
              Tab(child: Text('Daily')),
              Tab(child: Text('Monthly')),
              Tab(child: Text('Summary')),
              Tab(child: Text('Description')),
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Income',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '0.00',
                      style: TextStyle(fontSize: 14, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Exp.',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '16,351.00',
                      style: TextStyle(fontSize: 14, color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      '-16,351.00',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ValueListenableBuilder(
            valueListenable: _index,
            builder: (context, i, index) {
              if (i == 1) return const SizedBox();
              return const Divider(height: 2);
            },
          ),
        ],
      ),
    );
  }
}

/*

AppBar(
          title: const Text('Trans.'),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.star_border),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.filter_list),
            ),
          ],
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(child: Text('Calendar')),
              Tab(child: Text('Daily')),
              Tab(child: Text('Monthly')),
              Tab(child: Text('Summary')),
              Tab(child: Text('Description')),
            ],
          ),
        ),
 */
