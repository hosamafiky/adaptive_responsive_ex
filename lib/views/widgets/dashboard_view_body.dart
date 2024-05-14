import 'package:adaptive_responsive_ex/core/widgets/adaptive_layout.dart';
import 'package:flutter/material.dart';

import 'dashboard_view_desktop_body.dart';
import 'dashboard_view_mobile_body.dart';
import 'dashboard_view_tablet_body.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayoutBuilder: (context) => const DashboardViewMobileBody(),
      desktopLayoutBuilder: (context) => const DashboardViewDesktopBody(),
      tabletLayoutBuilder: (context) => const DashboardViewTabletBody(),
    );
  }
}
