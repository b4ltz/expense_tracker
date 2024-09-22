import 'package:expense_tracker/src/features/landing/presentation/widgets/calendar/bloc/calendar_bloc.dart';
import 'package:expense_tracker/src/features/landing/presentation/widgets/calendar/bloc/calendar_event.dart';
import 'package:expense_tracker/src/features/landing/presentation/widgets/daily/bloc/daily_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class TransAppBar extends StatefulWidget {
  final TabController tabController;

  const TransAppBar({super.key, required this.tabController});

  @override
  State<TransAppBar> createState() => _TransAppBarState();
}

class _TransAppBarState extends State<TransAppBar> {
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
                  switch (widget.tabController.index) {
                    case 0:
                      context
                          .read<CalendarBloc>()
                          .add(const CalendarPrevMonthPressed());
                      break;
                    case 1:
                      context
                          .read<DailyBloc>()
                          .add(const DailyEvent.onPrevPage());
                      break;
                    default:
                  }
                },
                icon: const Icon(Icons.chevron_left),
              ),
              Expanded(
                child: Center(child: BlocBuilder<CalendarBloc, CalendarState>(
                  builder: (context, state) {
                    final f = DateFormat('MMMM yyyy');
                    return Text(f.format(state.selectedDate));
                  },
                )),
              ),
              IconButton(
                onPressed: () {
                  switch (widget.tabController.index) {
                    case 0:
                      context
                          .read<CalendarBloc>()
                          .add(const CalendarNextMonthPressed());
                      break;
                    case 1:
                      context
                          .read<DailyBloc>()
                          .add(const DailyEvent.onNextPage());
                      break;
                    default:
                  }
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
