import 'package:adaptive_responsive_ex/views/dashboard_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AdaptiveDashboard());
}

class AdaptiveDashboard extends StatelessWidget {
  const AdaptiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Adaptive Dashboard',
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    );
  }
}
