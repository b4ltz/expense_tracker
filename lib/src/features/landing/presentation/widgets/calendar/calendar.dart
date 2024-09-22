import 'package:expense_tracker/src/core/utils/usecases/date_utils.dart';
import 'package:expense_tracker/src/features/landing/presentation/widgets/calendar/bloc/calendar_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:in_date_utils/in_date_utils.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  Widget _weekDaysGenerator(String e) {
    return Expanded(
      child: Center(
          child: Text(
        e,
        style: TextStyle(
            fontSize: 9.5,
            color: e == 'Sun'
                ? Colors.red
                : e == 'Sat'
                    ? Colors.blue
                    : null),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const VerticalDivider(width: 1),
            ...kWeekDays.map(_weekDaysGenerator),
            const VerticalDivider(width: 1),
          ],
        ),
        const Divider(height: 1),
        Expanded(
          child: BlocBuilder<CalendarBloc, CalendarState>(
            builder: (_, state) {
              return Column(
                children: [
                  for (var row in splitDates(state.dates, 6).indexed) ...[
                    Expanded(
                      child: Row(
                        children: [
                          for (var innerRow in row.$2.indexed) ...[
                            _CalendarDay(innerRow: innerRow, state: state),
                            const VerticalDivider(width: 1)
                          ]
                        ],
                      ),
                    ),
                    const Divider(height: 1)
                  ]
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CalendarDay extends StatelessWidget {
  const _CalendarDay({
    required this.innerRow,
    required this.state,
  });

  final (int, DateTime) innerRow;
  final CalendarState state;

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    return Expanded(
      child: InkWell(
        onTap: () {},
        child: Container(
          color: !DTUExtension.isSameMonth(innerRow.$2, state.selectedDate)
              ? Theme.of(context).colorScheme.surfaceContainer
              : null,
          child: SizedBox.expand(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(3, 0, 0, 0),
                  width: double.infinity,
                  color: DTU.isSameDay(now, innerRow.$2)
                      ? Theme.of(context).primaryColor
                      : null,
                  child: Text(
                    state.getDateText(innerRow.$2),
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          decoration: TextDecoration.underline,
                          color: DTU.isSameDay(now, innerRow.$2)
                              ? Colors.white
                              : !DTUExtension.isSameMonth(
                                      innerRow.$2, state.selectedDate)
                                  ? Colors.black54
                                  : null,
                        ),
                  ),
                ),
                const Expanded(child: SizedBox()),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    '123.12',
                    textAlign: TextAlign.right,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Theme.of(context).primaryColor),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    '123.12',
                    textAlign: TextAlign.right,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.red),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    '123.12',
                    textAlign: TextAlign.right,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
