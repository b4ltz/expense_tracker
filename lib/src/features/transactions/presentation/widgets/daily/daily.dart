import 'dart:async';

import 'package:expense_tracker/src/core/utils/usecases/date_utils.dart';
import 'package:expense_tracker/src/features/landing/presentation/widgets/daily/bloc/daily_bloc.dart';
import 'package:expense_tracker/src/shared/models/expense_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';

class Daily extends StatelessWidget {
  const Daily({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.labelLarge;
    final subTitleStyle =
        Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.grey);
    final trailingTextStyle = Theme.of(context).textTheme.labelMedium;
    final formatter = NumberFormat('₱#,##0.00', 'en-ph');
    final tileColor = Theme.of(context).colorScheme.surface;
    final separatorColor =
        Theme.of(context).colorScheme.surfaceContainerHighest;
    final bloc = context.read<DailyBloc>();
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: BlocBuilder<DailyBloc, DailyState>(
        builder: (context, state) {
          return state.maybeWhen<Widget>(
            loading: () => const Center(child: CircularProgressIndicator()),
            data: (data) => RefreshIndicator(
              onRefresh: () async {
                // Create a Completer to control when the refresh is completed
                Completer<void> completer = Completer<void>();

                // Add the refresh event to the bloc
                bloc.add(const DailyEvent.onRefresh());
                // Listen for state changes in the bloc
                StreamSubscription subscription = bloc.stream.listen((state) {
                  if (state is DailyStateData) {
                    // Complete the refresh when the state is DailyStateData
                    completer.complete();
                  }
                });

                // Wait for the completer to complete
                await completer.future;

                // // Cancel the subscription when done to avoid memory leaks
                subscription.cancel();
              },
              child: GroupedListView<Expense, DateTime>(
                elements: data,
                groupBy: (e) => e.date,
                order: GroupedListOrder.DESC,
                useStickyGroupSeparators: true,
                separator: const SizedBox(height: 2),
                stickyHeaderBackgroundColor: tileColor,
                groupItemBuilder: (context, expense, isStart, isEnd) {
                  return Column(
                    children: [
                      ListTile(
                        tileColor: tileColor,
                        onTap: () =>
                            bloc.add(DailyEvent.onDaySelect(expense.date)),
                        contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        horizontalTitleGap: 5,
                        visualDensity: const VisualDensity(vertical: -4),
                        minLeadingWidth: 50,
                        leading: SizedBox(
                          width: 50,
                          child: Text(
                            expense.category,
                            overflow: TextOverflow.ellipsis,
                            style: subTitleStyle,
                          ),
                        ),
                        title: Text(expense.note ?? expense.account),
                        subtitle: Text(expense.account),
                        titleTextStyle: titleStyle,
                        subtitleTextStyle: subTitleStyle,
                        trailing: Text(
                          formatter.format(expense.amount.abs()),
                          style: trailingTextStyle?.copyWith(
                              color:
                                  expense.isExpense ? Colors.red : Colors.blue),
                        ),
                      ),
                      if (isEnd) Container(height: 10, color: separatorColor),
                    ],
                  );
                },
                groupHeaderBuilder: (exp) {
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Divider(height: 1),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              '${exp.date.day}',
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 5),
                            Container(
                              padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
                              width: 25,
                              decoration: BoxDecoration(
                                  color: getWeekDayColor(exp.date),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(2))),
                              child: Text(
                                kWeekDaysISO[exp.date.weekday - 1],
                                style: const TextStyle(
                                    fontSize: 9, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            const Expanded(child: SizedBox()),
                            SizedBox(
                              width: 100,
                              child: Text(
                                formatter.format(exp.totalIncome.abs()),
                                style: trailingTextStyle?.copyWith(
                                    color: Colors.blue),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: Text(
                                formatter.format(exp.totalExpense.abs()),
                                style: trailingTextStyle?.copyWith(
                                    color: Colors.red),
                                textAlign: TextAlign.right,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(height: 1),
                    ],
                  );
                },
              ),
            ),
            orElse: () {
              return Container();
            },
          );
        },
      ),
    );
  }
}
