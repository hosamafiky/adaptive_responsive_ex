import 'package:adaptive_responsive_ex/views/widgets/all_expenses_widget.dart';
import 'package:flutter/material.dart';

class DashboardViewTabletBody extends StatelessWidget {
  const DashboardViewTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      color: Colors.black,
      child: const Column(
        children: [
          SizedBox(height: 16),
          AllExpensesWidget(),
          SizedBox(height: 16),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
