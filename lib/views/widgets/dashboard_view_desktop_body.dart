import 'package:adaptive_responsive_ex/views/widgets/custom_drawer.dart';
import 'package:adaptive_responsive_ex/views/widgets/dashboard_view_tablet_body.dart';
import 'package:adaptive_responsive_ex/views/widgets/desktop_third_column.dart';
import 'package:flutter/material.dart';

class DashboardViewDesktopBody extends StatelessWidget {
  const DashboardViewDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 3, child: DashboardViewTabletBody()),
        Expanded(child: DesktopThirdColumnWidget()),
      ],
    );
  }
}
