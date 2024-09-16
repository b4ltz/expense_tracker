import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {
  const Calendar({super.key});

  @override
  Widget build(BuildContext context) {
    const List<String> kWeekDays = [
      'Sun',
      'Mon',
      'Tue',
      'Wed',
      'Thu',
      'Fri',
      'Sat'
    ];
    return Column(
      children: [
        Row(
          children: kWeekDays
              .map(
                (e) => Expanded(
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
                ),
              )
              .toList(),
        ),
        const Divider(height: 1),
      ],
    );
  }
}
