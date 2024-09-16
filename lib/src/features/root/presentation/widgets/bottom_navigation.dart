import 'package:expense_tracker/src/features/root/presentation/bloc/bottom_nav_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBottomNavigation extends StatefulWidget {
  final TabController tabController;
  const DashboardBottomNavigation({super.key, required this.tabController});

  @override
  State<DashboardBottomNavigation> createState() =>
      _DashboardBottomNavigationState();
}

class _DashboardBottomNavigationState extends State<DashboardBottomNavigation> {
  void _onItemTap(int index) {
    context.read<BottomNavigationCubit>().selectPage(index);
    widget.tabController.animateTo(index);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BottomNavigationCubit, int>(
      listenWhen: (previous, current) => previous != current,
      listener: (context, state) {},
      builder: (context, state) {
        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: state,
          onTap: _onItemTap,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.menu_book,
              ),
              label: '${DateTime.now().month}/${DateTime.now().day}',
            ),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.auto_graph_rounded,
                ),
                label: 'Stats'),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.storage_outlined,
                ),
                label: 'Accounts'),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.more_horiz,
              ),
              label: 'More',
            ),
          ],
        );
      },
    );
  }
}
