


import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:in_date_utils/in_date_utils.dart';

const kWeekDays = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
const kWeekDaysISO = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat','Sun'];


Color getWeekDayColor(DateTime date) {
  if (date.weekday == 6) return Colors.blue;
  if (date.weekday == 7) return Colors.red;
  return Colors.grey;
  
}
List<DateTime> getCalendarDates(DateTime dt) {
  List<DateTime> value = <DateTime>[];
  DateTime refDate = DateTime(dt.year,dt.month, 1);
  int weekday = refDate.weekday;
  if (weekday == 7) weekday = 0;
  const totalDays = 42;
  int currDay = weekday * -1;
  for (var i = currDay; i < totalDays; i++) {
    final date = refDate.add(Duration(days: i));
    value.add(date);
    if (value.length == 42) break;
  }
  return value;
}
extension DTUExtension on DTU {
  static bool isSameMonth(DateTime d1, DateTime d2) {
    return d1.month == d2.month && d1.year == d2.year;
  }
}

List<List<DateTime>> splitDates(List<DateTime> originalList, int numberOfSublists) {
  // Calculate the size of each sublist
  int chunkSize = (originalList.length / numberOfSublists).ceil();

  List<List<DateTime>> subLists = [];

  for (int i = 0; i < originalList.length; i += chunkSize) {
    // Make sure we don't go out of bounds for the last sublist
    subLists.add(originalList.sublist(i, i + chunkSize > originalList.length ? originalList.length : i + chunkSize));
  }

  return subLists;
}
