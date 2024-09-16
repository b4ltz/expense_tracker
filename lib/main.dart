import 'package:expense_tracker/src/core/styles/theme.dart';
import 'package:expense_tracker/src/core/utils/injections.dart';
import 'package:expense_tracker/src/features/root/presentation/pages/root_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Roboto", "Roboto");

    final theme = MaterialTheme(textTheme);
    return MaterialApp(
        theme: brightness == Brightness.light
            ? theme.light().copyWith(tabBarTheme: MaterialTheme.tabBarTheme())
            : theme.dark().copyWith(tabBarTheme: MaterialTheme.tabBarTheme()),
        home: const DashboardPage());
  }
}
