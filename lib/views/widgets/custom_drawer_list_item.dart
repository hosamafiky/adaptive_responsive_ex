import 'package:adaptive_responsive_ex/core/utils/app_styles.dart';
import 'package:adaptive_responsive_ex/models/drawer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawerListItem extends StatelessWidget {
  const CustomDrawerListItem({
    super.key,
    required this.item,
    required this.onTap,
    this.isActive = false,
  });

  final DrawerItemModel item;
  final VoidCallback onTap;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
      visualDensity: const VisualDensity(vertical: -4),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(
          item.title,
          style: isActive ? AppStyles.styleBold16(context) : AppStyles.styleRegular16(context),
        ),
      ),
      leading: SvgPicture.asset(item.icon),
      trailing: isActive
          ? const VerticalDivider(
              color: Color(0xFF4EB7F2),
              thickness: 3.27,
            )
          : null,
      onTap: () {
        onTap();
        item.onTap?.call();
      },
    );
  }
}
