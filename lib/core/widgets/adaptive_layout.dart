import 'package:flutter/material.dart';

enum ScreenType { mobile, tablet, desktop }

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder? desktopLayoutBuilder;
  final WidgetBuilder? tabletLayoutBuilder;
  final WidgetBuilder mobileLayoutBuilder;

  const AdaptiveLayout({
    super.key,
    this.desktopLayoutBuilder,
    this.tabletLayoutBuilder,
    required this.mobileLayoutBuilder,
  });

  ScreenType getType(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width < 600) return ScreenType.mobile;
    if (width < 800) return ScreenType.tablet;
    return ScreenType.desktop;
  }

  @override
  Widget build(BuildContext context) {
    final screenType = getType(context);

    switch (screenType) {
      case ScreenType.tablet:
        return (tabletLayoutBuilder ?? desktopLayoutBuilder ?? mobileLayoutBuilder)(context);
      case ScreenType.desktop:
        return (desktopLayoutBuilder ?? tabletLayoutBuilder ?? mobileLayoutBuilder)(context);
      case ScreenType.mobile:
      default:
        return mobileLayoutBuilder(context);
    }
  }
}
